#pragma once
#include <string>

enum class log_type { OUT = 0, LOG = 1 };
namespace gossple {
	extern bool log_redirected;
}
class logger {
	std::string component;
public:
	static logger* most_recent_run;

	explicit logger(std::string const & component) : component{component}, progress_tick_index{} {}
	explicit logger(std::string      && component) : component{std::move(component)}, progress_tick_index{} {}

	logger(logger const&) = delete;
	logger(logger     &&) = delete;
	logger & operator=(logger const&) = delete;
	logger & operator=(logger     &&) = delete;

	void log(std::string const &msg);
	void runlog(std::string const &msg);

	[[gnu::format(printf,2,3)]]
	void log(char const * fmt, ...);

	[[gnu::format(printf,2,3)]]
	void runlog(char const * fmt, ...);

	uint8_t progress_tick_index;
	void progress(uint32_t value, uint32_t max, bool advance_tick);
};
