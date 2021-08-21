// =====================================================================
// SuperCollider Workspace
// =====================================================================

//:
a = Synth(\default);

//:
a = Synth(\default, [\freq, 1200]);
//:
a.free;
//:
b  = 1000.rand;
//:
b
//:
b.squared;
//:
b.sqrt;
//:
b + 2;
//:
z
//:Again ...
a = Synth(\default, [\freq, 1200]);
//:
a.run(0);
a.run(1);
//:
Collection.dumpClassSubtree;
//:
a = List.new;
//:
a
//:
a.size;
//:
a.add( Synth(\default, [\freq, 400.rrand(2000)]) );
//:
a[0];
//:
a[0].set(\freq, 5000);

a[1].set(\freq, 5100);
//:
a do: { | synth, index |
	synth.set(\freq, (index + 5 * 7).midicps)
};
//:
a do: { | synth, index |
	synth.set(\amp, 0.1)
};
//:
a do: { | synth |
	synth.free;
};
//:
a = 12 collect: { Synth(\default, [\amp, 0.01]); };
//:*
a.choose.set(\freq, (20, 27 .. 100).choose.midicps);
0.1.wait;
//:
a do: _.set(\amp, 0.1);
