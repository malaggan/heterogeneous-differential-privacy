#include "log.hh"
#include <cstdarg>
#include <cstdio>
#include <vector>
#include <iostream>
namespace log {
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
	if(use_arabic_locale) log::produce(log_type::LOG, "\xE2\x80\x8E"); // LTR character
	// TODO use ncurses, also to detect color support

	log::produce(log_type::LOG, "\033[37;1m[\033[32;1m");
	log::produce(log_type::LOG, component);
	log::produce(log_type::LOG, "\033[37;1m]\033[0m: ");
	log::produce(log_type::LOG, msg);
	if(use_arabic_locale) log::produce(log_type::LOG, "\xE2\x80\x8E"); // LTR character
}

void logger::log(std::string const &msg) {
	most_recent_run = nullptr;
	vprint(component, msg);
	log::produce(log_type::LOG, "\n");
}

void logger::log(char const * fmt, ...) {
	va_list args, v;
	va_start(args, fmt);
	va_copy(v, args);
	auto msg = log::va_to_str(fmt, v);
	va_end(args);

	log(msg);
}

void logger::runlog(std::string const &msg) {
	if(most_recent_run && most_recent_run->component == this->component)
		log::produce(log_type::LOG, "\033[1F"); // move one line up
	most_recent_run = this;

	vprint(component, msg);
	log::produce(log_type::LOG, "\n");
}

void logger::runlog(char const * fmt, ...) {
	va_list args, v;
	va_start(args, fmt);
	va_copy(v, args);
	auto msg = log::va_to_str(fmt, v);
	va_end(args);

	runlog(msg);
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
	s
		<< "\033[37;1m[\033[35;1m"
		<< std::put_time(&tm, "%c")
		<< "\033[37;1m]\033[0m: "
		<< ' '; // %Z for timezone.
	log::produce(log_type::LOG, s.str());
}
