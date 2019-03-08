We start with a simple document: `deployment.yaml`{{open}}

## Adding url

First add a key `url` whose value is build from a string literals and the value of the field `version`.
Expressions are surrounded with `((` `))`:

<pre class="file" data-filename="deployment.yaml" data-target="append">  url: (( "http://apps.mycompany.com/myapp?version=" version ))</pre>


## Adding description

Then add a similar expression for a `description` :

<pre class="file" data-filename="deployment.yaml" data-target="append">  description: (( "This document describes a " name " located at " url ))</pre>

## Executing document processing

To procress the `deployment.yaml` document, the `spiff` tool is called with the command `merge` and the filename.

`spiff merge deployment.yaml`{{execute}}

## Creating result in JSON

Spiff outputs the resulting document as YAML by default. To generate JSON, use the `--json` command line option:

`spiff merge --json deployment.yaml`{{execute}}
