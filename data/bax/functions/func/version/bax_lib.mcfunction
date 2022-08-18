execute store result score #old_version bax.sys run data get storage bax:data version
execute if score #old_version bax.sys > $version bax.sys run function bax:func/version/zzz/b