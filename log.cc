#include "log.hh"
#include <cstdarg>
#include <cstdio>
#include <vector>
#include <iostream>

namespace __detail {
	std::string va_to_str(char const * fmt, va_list args) {
		va_list v;
		va_copy(v, args);
		auto len = vsnprintf(0, 0, fmt, v);
		std::vector<char> str;
		str.resize(len + 1); // length excludes terminating null
		vsnprintf(str.data(), len + 1, fmt, args);
		return std::string{str.data()};
	}

	void produce(log_type t, std::string const & str) {
		if(t == log_type::OUT) std::cout << str;
		else std::clog << str;
	}
}

logger* logger::most_recent_run = nullptr;
static void logtime();
constexpr bool const use_arabic_locale = false;

static void vprint(std::string const & component, std::string const & msg) {
	logtime();
	if(use_arabic_locale) __detail::produce(log_type::LOG, "\xE2\x80\x8E"); // LTR character
	// TODO use ncurses, also to detect color support

	if(!gossple::log_redirected) __detail::produce(log_type::LOG, "\033[37;1m[\033[32;1m");
	else __detail::produce(log_type::LOG, "[");
	__detail::produce(log_type::LOG, component);
	if(!gossple::log_redirected) __detail::produce(log_type::LOG, "\033[37;1m]\033[0m: ");
	else __detail::produce(log_type::LOG, "]: ");
	__detail::produce(log_type::LOG, msg);
	if(use_arabic_locale) __detail::produce(log_type::LOG, "\xE2\x80\x8E"); // LTR character
}

void logger::log(std::string const &msg) {
	most_recent_run = nullptr;
	vprint(component, msg);
	__detail::produce(log_type::LOG, "\n");
}

void logger::log(char const * fmt, ...) {
	va_list args, v;
	va_start(args, fmt);
	va_copy(v, args);
	auto msg = __detail::va_to_str(fmt, v);
	va_end(args);

	log(msg);
}

void logger::runlog(std::string const &msg) {
	if(!gossple::log_redirected &&  most_recent_run && most_recent_run->component == this->component)
		__detail::produce(log_type::LOG, "\033[1F"); // move one line up
	most_recent_run = this;

	vprint(component, msg);
	__detail::produce(log_type::LOG, "\n");
}

void logger::runlog(char const * fmt, ...) {
	va_list args, v;
	va_start(args, fmt);
	va_copy(v, args);
	auto msg = __detail::va_to_str(fmt, v);
	va_end(args);

	runlog(msg);
}
#include <vector>
#include <cassert>
#include <cmath>
void logger::progress(uint32_t value, uint32_t max, bool advance_tick) {
	static char const progress_tick[] = {'-','\\','|','/'};

	// disable progress indicators for non-interactive logging
	if(gossple::log_redirected)
		return;

	if(advance_tick)
		progress_tick_index ++;
	else
		return; // if no update needed to progress bar state, save time and do not print it

	std::vector<char> progress_bar;
	progress_bar.push_back(progress_tick[progress_tick_index % 4]);
	progress_bar.push_back(' ');
	progress_bar.push_back('[');
	if(value > max)
		value = max;
	double v = static_cast<double>(value),m = static_cast<double>(max);
	v /= m; // noramlize
	v *= 50;
	value = static_cast<uint32_t>(std::round(v));
	max = 50;
	if(value > max)
		value = max;

	std::fill_n(std::back_inserter<>(progress_bar), value, '=');
	std::fill_n(std::back_inserter<>(progress_bar), max - value, '-');
	progress_bar.push_back(']');
	progress_bar.push_back(0);
	runlog("%s",progress_bar.data());
}

#include <iostream>
#include <iomanip>
#include <ctime>
#include <sstream>
void logtime() {
	std::time_t t = std::time(nullptr);
	std::tm tm = *std::localtime(&t);
	std::stringstream s;
	if(use_arabic_locale) s.imbue(std::locale("ar_EG.utf8"));
	else s.imbue(std::locale("en_US.utf8"));
	if(use_arabic_locale) s << "\xE2\x80\x8F"; // RTL mark
	if(!gossple::log_redirected) s << "\033[37;1m[\033[35;1m";
	else s << "[";
	s	<< std::put_time(&tm, "%c");
	if(!gossple::log_redirected) s	<< "\033[37;1m]\033[0m: ";
	else s << "]: ";
	s	<< ' '; // %Z for timezone.
	__detail::produce(log_type::LOG, s.str());
}
