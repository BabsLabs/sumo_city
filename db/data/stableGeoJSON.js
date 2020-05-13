const stableGeoJSON = {
  type: 'FeatureCollection',
  features: [
    {
    type: 'Feature',
    geometry: {
      type: 'Point',
      coordinates: [
        139.825096,
          35.715732
        ]
      },
    properties: {
      title: 'Miyagino-beya',
      description: "Miyagino sumo stable. Hakuhō Shō's stable",
      address: '2 Chome-16-10 Yahiro, Sumida City, Tokyo 131-0041, Japan'
      }
    },
    {
    type: 'Feature',
    geometry: {
      type: 'Point',
      coordinates: [
          139.788382,
          35.687071
        ]
      },
    properties: {
      title: 'Arashio-beya',
      description: 'Arashio-beya Sumo stable.',
      address: '2 Chome-47-2 Nihonbashihamacho, Chuo City, Tokyo 103-0007, Japan'
      }
    }
  ]
};

export default stableGeoJSON