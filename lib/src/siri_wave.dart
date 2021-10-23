import 'package:flutter/material.dart';

import 'ios_7_siri_wave.dart';
import 'ios_9_siri_wave.dart';
import 'siri_wave_style.dart';

class SiriWave extends StatelessWidget {
  const SiriWave({Key? key, this.siriWaveStyle = SiriWaveStyle.ios9})
      : super(key: key);

  final SiriWaveStyle siriWaveStyle;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: siriWaveStyle == SiriWaveStyle.ios7
            ? const IOS7SiriWave()
            : const IOS9SiriWave(),
      ),
    );
  }
}