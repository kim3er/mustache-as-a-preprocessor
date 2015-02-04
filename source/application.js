var arr = [
{{# trim_last}}
{{# array}}
	'{{name}}',
{{/array}}
{{/ trim_last}}
];

{{# use_console}}
console.log(arr);
{{/ use_console}}