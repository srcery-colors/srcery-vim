// Canonical hue families remain distinct.
interface Color {
  name: string;
  channels: [number, number, number];
}

const background: Color = {
  name: "parchment",
  channels: [252, 232, 195],
};

function describe(color: Color): string {
  return `${color.name}: ${color.channels.join(", ")}`;
}

const enabled = true;
const missing = null;
console.log(describe(background));
