#include <string>

class logger {
	std::string component;
public:
	static logger* most_recent_run;

	explicit logger(std::string const & component) : component{component} {}
	explicit logger(std::string      && component) : component{std::move(component)} {}

	logger(logger const&) = delete;
	logger(logger     &&) = delete;
	logger & operator=(logger const&) = delete;
	logger & operator=(logger     &&) = delete;

	void log(std::string const &msg);

	[[gnu::format(printf,2,3)]]
	void log(char const * fmt, ...);

	[[gnu::format(printf,2,3)]]
	void runlog(char const * fmt, ...);
};
