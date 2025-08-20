#let date = datetime.today()
#let month-names = (
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December",
)
#let darkblue = rgb(0, 51, 102)
#set page(
  "a4",
  margin: 2cm,
  numbering: "1/1",
  number-align: center,
  header: context [
    #set text(8pt)
    #smallcaps[Sundar Gurumurthy]
    #h(1fr)
    #date.day() #month-names.at(date.month() - 1), #date.year()
  ],
  footer: context [
    #set text(8pt)
    #link("https://sundar.guru/")[https://sundar.guru]
    #h(1fr)
    Page #counter(page).display("1 of 1", both: true)
  ],
)
#set text(font: "Roboto", size: 10pt)
#show heading.where(level: 1): it => [
  #set text(darkblue, 18pt, weight: "bold")
  #block(smallcaps(it.body))
]
#show heading.where(level: 2): it => [
  #set text(darkblue, 14pt, weight: "semibold")
  #block(it.body)
]
#show link: it => [
  #set text(blue)
  #text(it.body)
]
#align(center)[
  #text(24pt, weight: "bold", fill: darkblue)[Sundar Gurumurthy] \
  #link("mailto:sundar@sundar.guru")[sundar\@sundar.guru] • (+44) 7442278370 \
  #link("https://sundar.guru")[www.sundar.guru] • #link("https://orcid.org/0000-0001-5388-8785")[ORCID] •  #link("https://linkedin.com/in/sundar-guru")[linkedin.com/in/sundar-guru] •  #link("https://github.com/neuroconvergent")[github.com/neuroconvergent]
]

= Professional Summary
Computational engineer with 3+ years of hands-on experience in FEA, materials modeling, and design for manufacturing. Skilled in developing physics-based simulation workflows for WAAM, crashworthiness, and gear systems.

= Work Experience

== Research Assistant
#grid(
  columns: (1fr, auto),
  align(
    left,
  )[_ *Welding and Additive Manufacturing Centre, Cranfield University* _],
  align(right)[Jun 2024 – Present],
)
- Developed thermo-mechanical FEA models for Wire Arc Additive Manufacturing (WAAM) using ABAQUS, analyzing residual stress, distortion, and phase transformations.
- Applied solid-state phase transformation (SSPT) modeling techniques for steels to improve simulation accuracy.
- Integrated martensitic transformation effects into multi-physics simulation workflows for dissimilar metal joints.
- Automated simulation pre- and post-processing via Python and C++ to optimize research throughput.
- Performed experimental validation with 3D scanning, SEM, and thermal imaging, ensuring robust correlation with computational results.

== Graduate Engineering Trainee
#grid(
  columns: (1fr, auto),
  align(left)[_ * Sona Comstar, Gurugram, India * _],
  align(right)[Jul 2021 – Jul 2022],
)
- Designed and optimized drivetrain components under stringent tolerance and performance requirements using Siemens NX CAD tools.
- Developed advanced gear tooth surface modeling tools incorporating crowning, improving proprietary design software capabilities.
- Conducted Loaded Tooth Contact Analysis (LTCA) and fatigue life simulations, enhancing component durability predictions.
- Collaborated with suppliers and cross-functional teams to ensure manufacturability and quality compliance.

== Student Trainee – Crash Structures
#grid(
  columns: (1fr, auto),
  align(left)[_ * Mercedes-Benz R&D India, Bangalore, India * _],
  align(right)[Feb 2021 – Jun 2021],
)
- Developed non-linear finite element models of tires using LS-Dyna for dynamic crash impact analysis.
- Investigated contact algorithm accuracy and air pressure modeling in dynamic simulation environments.
- Supported validation of composite material behavior models to improve predictive crashworthiness.

= Education

== Cranfield University
#grid(
  columns: (1fr, auto),
  align(left)[_ * MSc by Research in Manufacturing * _],
  align(right)[Jan 2023 – Oct 2024],
)
Thesis: _Understanding and Improving the Inherent Strain Method for Mechanical Analysis of WAAM_
- Developed novel tools to predict distortion and residual stresses in additive manufacturing.
- Contributed to the NEWAM project focusing on Ti6Al4V aerospace components.
- Expanded expertise in metal additive manufacturing and multi-scale materials modeling.

== Birla Institute of Technology and Science (BITS), Pilani
#grid(
  columns: (1fr, auto),
  align(left)[_ * B.E. Mechanical Engineering * _, First Class],
  align(right)[Aug 2017 – Jun 2021],
)
CGPA: 7.71 / 10

= Technical Skills
*
CAD & Design:
* CATIA V5, Siemens NX, Fusion 360 \
*
Simulation:
* ABAQUS, LS-Dyna, NASTRAN, ANSYS \
*
Programming Languages
* Python, C++, FORTRAN, MATLAB, Git, Bash, Rust \
*
Scientific Computing:
* FEniCS, deal.II \
*
Materials Modeling:
* Solid-State Phase Transformations (SSPT) in steels, Crystal Plasticity Finite Element Method (CPFEM) fundamentals \
*
Analysis:
* FEA, Residual Stress, Fatigue Life, LTCA \
*
Manufacturing:
* Wire Arc Additive Manufacturing (WAAM), GD&T, Tolerance Stack-up, Rapid Prototyping \
*
Characterization & Tools:
* 3D Scanning, SEM, XRD, EBSD, Thermal Imaging \

= Additional Skills
- Strong analytical and problem-solving skills in multi-scale materials and manufacturing processes.
- Effective communicator with experience presenting complex research to multidisciplinary teams.
- Skilled in technical report writing and documentation with attention to detail.
- Adaptable and quick learner, thriving in research and industrial environments.

/*
= Independent Projects

== Kinetic Monte Carlo Simulation for Additive Manufacturing
Developed integrated kinetic Monte Carlo (KMC) methods to simulate solid-state phase transformations, benchmarking with empirical Johnson-Mehl-Avrami-Kolmogorov (JMAK) models using the deal.II C++ library. Focused on microstructure evolution impacting mechanical properties in additive manufacturing.
*/

= Awards
- *AIAA/USU SmallSat Travel Award* – Sponsored by Blue Origin for conference presentation.

= Publications
Full list available at: #link("https://sundar.guru/publications")[https://sundar.guru/publications]

= References
Available upon request.

= Volunteering
#grid(
  columns: (1fr, auto),
  align(left)[_ * NSS BITS Pilani * _],
  align(right)[Jan 2018 – Dec 2018],
)
- Tutored underprivileged teenagers enrolled under India's Right to Education Act.
- Assisted in fundraising and donation drives for student scholarships.
