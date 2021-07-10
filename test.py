#!/usr/bin/env python2.7
import gi
gi.require_version('AppStreamGlib', '1.0')

from gi.repository import AppStreamGlib as AppStream

store = AppStream.Store()

store.load(AppStream.StoreLoadFlags.APP_INFO_SYSTEM)

apps = store.get_apps()

for app in apps:
    print app.get_id() + ":" + app.get_pkgname_default()

#print apps
