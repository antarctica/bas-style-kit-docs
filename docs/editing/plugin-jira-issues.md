# BAS Style Kit Documentation

## Editing - Jira issue plugin

To link to Jira issue use the following tag, which is implemented by a custom plugin.

```html
{% jira issue="BSK-129" %}
```

In production environments, i.e. `JEKYLL_ENV=production`, a call is made to the Jira API to retrieve the current status
of an issue ('to-do', 'done', etc.), and display this alongside a link to the issue in a stylised component.

In development environments, the default, the call to Jira is skipped. A static status of 'unknown' is returned instead.

### Tag configuration

The connection to Jira, and the user the API is accessed under is configured in the Jekyll configuration file.

E.g.

```yaml
jira_issues:
  instance: https://jira.example.com
  username: user
```

An environment variable, `JEKYLL_JIRA_ISSUE_PLUGIN_ACCOUNT_PASSWORD` is read in to provide the password for the user
account configured above.

This variable can be set with a bash profile, or CI/CD environment. It can also be passed directly on the command line:

```shell
$ JEKYLL_JIRA_ISSUE_PLUGIN_ACCOUNT_PASSWORD=password jekyll build
```

### Markup customisation

The markup structure used to render each issue is:

* wrapper
    * link element
        * Icon (*optional*)
        * Issue ID
    * Status element

I.e. A wrapper surrounds two elements, a link to the issue, whose text is the issue ID, and the current status of the
issue (as text).

Classes are applied to these elements, a default set are defined by this plugin and cannot be omitted.
Additional classes can be set either at a global level (using `_config.yml` options) or on an instance by instance
basis using tag parameters.

Global classes are defined as part of the plugin configuration under the `classes` element, for example:

```yaml
jira_issues:
  classes:
    wrapper_classes: "label label-jira-issue"
```

**Note:** Both global and instance classes can be set together. It is not possible to omit global variables for a
particular instance.

This table summarises the classes which can be applied and how these are set in various contexts.

| Element | Config option       | Parameter           | Default Classes                                                                     |
| ------- | ------------------- | ------------------- | ----------------------------------------------------------------------------------- |
| Wrapper | `wrapper_classes`   | `wrapper_classes`   | `jira-issue`                                                                        |
| Link    | `link_classes`      | `link_classes`      | `jira-issue-link`                                                                   |
| Icon    | `link_icon_classes` | `link_icon_classes` | None                                                                                |
| Status  | `status_classes`    | `status_classes`    | `jira-issue-status jira-issue-status-STATUS jira-issue-status-colour-STATUS-COLOUR` |

**Note:** Where `link_icon_classes` isn't defined this element will be omitted entirely.

An example of a rendered issue, with no additional classes defined, looks like this:

```html
<span class="jira-issue label label-jira-issue">
    <a class="jira-issue-link " href="https://jira.example.com/browse/APP-101">
        <i class="fa fa-ticket" aria-hidden="true"></i>
        APP-101
    </a>
    <span class="jira-issue-status jira-issue-status-done jira-issue-status-colour-green ">Done</span>
</span>
```
