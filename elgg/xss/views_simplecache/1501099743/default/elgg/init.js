//<script>
define("elgg/init", function (require) {
	var Plugin = require('elgg/Plugin');
	var elgg = require('elgg');

	var modules = [];
	var i;

	// We need literal require('boot/example'); statements. We can't use async require in here because we promise to
	// not return this module until all boot plugins are loaded.

	for (i = 0; i < modules.length; i++) {
		if (modules[i].plugin instanceof Plugin) {
			modules[i].plugin._init();
		} else {
			console.error("Boot module boot/" + modules[i].name + " did not return an instance of Plugin (from elgg/Plugin)");
		}
	}

	elgg.trigger_hook('init', 'system');
});
