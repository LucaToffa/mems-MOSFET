#let title = [
  Microelectronics Devices, Sensors and MEMS \
  Project #3: MOSFET
]

#let auth-date = [
  Luca Toffalori, Mattia De Munari \
  30/06/2024
]

#set page(
  header: align(
    right + horizon,
    text(10pt)[
      #auth-date,
    ]
    
  ),
)

#align(center, text(19pt)[
  *#title*
])

// Renders an image or a placeholder if it doesn't exist.
// Don’t try this at home, kids!
#let maybe-image(path, ..args) = locate(loc => {
  let path-label = label(path)
  let first-time = query(locate(_ => {}).func(), loc).len() == 0
  if first-time or query(path-label, loc).len() > 0 {
    [#image(path, ..args)#path-label]
  } else {
    rect(width: 50%, height: 5em, fill: luma(235), stroke: 1pt)[
      #set align(center + horizon)
      Could not find #raw(path)
    ]
  }
})

=== Introduction
[Provide an introduction to the topic and the purpose of the report.]

== Image
Here is shown the device this sreport is about @mosfet.

#figure(
  maybe-image("mosfet_structure.png", width: 50%),
  caption: [
    _MOSFET_ to be characterized.
  ],
) <mosfet>

== Final device mesh
The final device mesh is shown in @mesh.

#figure(
  maybe-image("device_mesh.png", width: 50%),
  caption: [
    Final device mesh.
  ],
) <mesh>

== Potential profile in equilibrium
The potential profile in equilibrium is shown in @potential.
#figure(
  maybe-image("potential_profile.png", width: 50%),
  caption: [
    Potential profile in equilibrium.
  ],
) <potential>

== Simulated transfer and output characteristics
The simulated transfer and output characteristics are shown in @transfer and @output, respectively. 

/*
The transfer characteristics show the drain current as a function of the gate voltage, while the output characteristics show the drain current as a function of the drain voltage for different gate voltages. The transfer characteristics show the saturation region, the linear region, and the subthreshold region, while the output characteristics show the saturation region and the linear region. The transfer characteristics also show the threshold voltage, which is the gate voltage at which the drain current starts to increase significantly. 
The output characteristics show the drain current saturation at high drain voltages, which is due to the channel pinch-off effect. The transfer characteristics also show the subthreshold swing, which is the change in the gate voltage required to change the drain current by one decade in the subthreshold region. The subthreshold swing is an important parameter for low-power applications, as it determines the energy efficiency of the device. The transfer characteristics
*/

#figure(
  maybe-image("transfer_characteristics.png", width: 50%),
  caption: [
    Transfer characteristics.
  ],
) <transfer>

#figure(
  maybe-image("output_characteristics.png", width: 50%),
  caption: [
    Output characteristics.
  ],
) <output>

== Simulated Capacitance-Voltage curves
The simulated Capacitance-Voltage curves are shown in the following images.

#figure(
  maybe-image("capacitance_voltage_curves.png", width: 50%),
  caption: [
    Capacitance-Voltage curves.
  ],
) <capacitance>

=== Theoric calculations
[Provide any theoretical calculations or formulas relevant to the report.]


=== Conclusion
[Provide a conclusion to the report.]

=== References
[List any sources or references used in the report.]

=== Appendix
[Include any additional information or data that supports the report.]
