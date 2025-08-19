alsa_monitor.rules = alsa_monitor.rules or {}

table.insert(alsa_monitor.rules, {
    matches = {
        {
            {"node.name", "equals", "alsa_output.usb-FiiO_FiiO_BTR5-00.analog-stereo" },
            {"node.name", "equals", "alsa_output.usb-FiiO_FiiO_BTR5-00.iec958-stereo" },
        },
    },
    apply_properties = {
        ["device.enum-format"] = "S32LE", "S24LE", "S16LE",
        ["device.enum-rate"] = "44100, 48000, 96000, 192000, 384000",
    },
})
