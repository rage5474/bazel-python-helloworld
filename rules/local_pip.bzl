"""Minimalist example of a rule that does nothing."""

def _local_pip_impl(ctx):
    # This function is called when the rule is analyzed.
    # You may use print for debugging.
    print("pip_path: " + ctx.attr.pip_path)

local_pip = rule(
    implementation = _local_pip_impl,
    attrs = {
        "pip_path": attr.string(default='', doc='path to pip', mandatory=True, values=[]),
    },
)