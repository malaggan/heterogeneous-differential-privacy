#include "log.hh"
#include <cstdarg>
#include <cstdio>

logger* logger::most_recent_run = nullptr;
static inline void logtime();
constexpr bool const use_arabic_locale = false;

static inline void vprint(std::string const& component, char const * fmt, va_list args) {
	logtime();
	if(use_arabic_locale) printf("\xE2\x80\x8E"); // LTR character
	printf("\033[37;1m[\033[32;1m%s\033[37;1m]\033[0m: ", component.c_str()); // TODO use ncurses, also to detect color support
	vprintf(fmt, args);
	if(use_arabic_locale) printf("\xE2\x80\x8E"); // LTR character
}

void logger::log(std::string const &msg) {
	most_recent_run = nullptr;
	this->log("%s", msg.c_str());
}

void logger::log(char const * fmt, ...) {
	most_recent_run = nullptr;
	va_list args;
	va_start(args, fmt);
	vprint(component.c_str(), fmt, args);
	va_end(args);
	printf("\n");
}
// TODO: output to a file (tee) for logging purposes
void logger::runlog(char const * fmt, ...) {
	if(most_recent_run == this)
		printf("\033[1F"); // move one line up
	most_recent_run = this;
	va_list args;
	va_start(args, fmt);
	vprint(component.c_str(), fmt, args);
	va_end(args);
	printf("\n");
}

#include <iostream>
#include <iomanip>
#include <ctime>
inline void logtime() {
	std::time_t t = std::time(nullptr);
	std::tm tm = *std::localtime(&t);
	if(use_arabic_locale) std::cout.imbue(std::locale("ar_EG.utf8"));
	else std::cout.imbue(std::locale("en_US.utf8"));
	if(use_arabic_locale) std::cout << "\xE2\x80\x8F"; // RTL mark
	std::cout
		<< "\033[37;1m[\033[35;1m"
		<< std::put_time(&tm, "%c")
		<< "\033[37;1m]\033[0m: "
		<< ' '; // %Z for timezone.
}
