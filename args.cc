#include "args.hh"
#include <iostream>
#include <string>

po::variables_map vm; // global, all code can access it to retreive options
using namespace std;
extern double epsilon;
void parse_args(int ac, char *av[]) {
	// cmdline args: epsilon, groups-or-slices, if slices ( num slices, min epsilon ),

	po::options_description help("Help options");
	help.add_options()
    ("help", "produce help message")
		;
	po::options_description general("General options");
	general.add_options()
		("dataset,f", po::value<std::string>(), "dataset to use (can also be given positionally). If not specified, dataset is read from standard input (which can also be denoted by -). ")
    ("random-seed,r", po::value<uint32_t>(), "the random seed to use for reproducibility. If not given, fresh randomness is used every time")
		("private,p", po::bool_switch()->default_value(false), "enable differential privacy (via the Laplacian mechanism)")
		("epsilon,e", po::value<double>(&epsilon), "the differential privacy parameter")
		("secure", po::bool_switch()->default_value(false), "use secure Laplace noise generation due to Ilya Mironov") // TODO
		;
	po::options_description output("Output options");
	output.add_options()
		("header,h", po::bool_switch()->default_value(false), "print header line. if a file is new, header will be added automatically")
		("output,o", po::value<std::string>(), "file to write results to. If not specified, results are written to standard output")
		("append,a", po::bool_switch()->default_value(false), "append to the specified output file. If not present, output file is overwritten")
		("log", po::value<std::string>(), "file to write log to. If not specified, log messages are written to standard error")
		("overwrite", po::bool_switch()->default_value(false), "overwrite output file or log file if present. This option is ignored if stdout and stderr are used")
		;
	po::options_description groups("Groups options");
	groups.add_options()
		("naive,n", po::bool_switch()->default_value(false), "naive groups mode")
		("groups,g",po::bool_switch()->default_value(false), "standard groups mode")
		("unconcerned", po::value<double>(), "ratio of the unconcerned group (0 - 1)")
		("normal", po::value<double>(), "ratio of the normal group (0 - 1)")
		("concerned", po::value<double>(), "ratio of the concerned group (0 - 1)")
		;
	po::options_description slices("Slices options");
	slices.add_options()
		("slices,s", po::value<uint32_t>(), "the number of slices")
		("min,u", po::value<double>(), "min epsilon for slices (0 - 1)")
		;
	po::options_description cmdline_options;
	cmdline_options.add(help).add(general).add(output).add(groups).add(slices);

	po::options_description config_file_options;
	config_file_options.add(general).add(output).add(groups).add(slices);

	po::positional_options_description p;
	p.add("dataset", 1);

	po::store(po::command_line_parser(ac, av).options(cmdline_options).positional(p).run(), vm);
	//po::store(po::parse_config_file<char>(".gossple", config_file_options), vm);
	po::notify(vm);

	if (vm.count("help")) {
    cout << cmdline_options << "\n";
    exit(1);
	}
}
