(carbon:solubility)=
# The Solubility Pump

```{highlights}
Key Points:
- The amount of CO<sub>2</sub> that dissolves in water strongly depends on the temperature of that water.
- Variations in CO<sub>2</sub> solubility and ocean circulation interact to drive the **solubility pump**.
- The solubility pump traps high-CO<sub>2</sub> water in the deep ocean.
- CO<sub>2</sub> reacts with water to create non-exchangeable **Dissolved Inorganic Carbon** (DIC) species.
- These reactions increase the amount of carbon that can dissolve into the water.
- The DIC species exist in an equilibrium with water pH, which is critical for understanding the ocean carbon budget.
```

<!-- Reaction of CO2 with water.

pH dependence.

Conservative tracer(s) for the carbon system.

## Model Equations

DIC and TA tracers, C speciation calculation, pCO2 equilibration
 -->

The majority of carbon (~98%) in the ocean exists as {term}`Dissolved Inorganic Carbon (DIC)<DIC>`.
The DIC pool is the primary carbon reservoir in the ocean, and the chemical properties of DIC determine how much CO<sub>2</sub> the ocean can absorb.
We'll now look at how CO<sub>2</sub> and DIC are related.

## CO<sub>2</sub> dissolves in water

<!-- - Ideal gasses dissolve into water following Henry's Law ($K_0$)
- Sensitive to temperature
  - Think: what happens as water changes temperature?
  - Refer back to CO2 patterns.
- Calculate DIC concentration from pCO2 with only $K_0$ -->

We saw {ref}`previously <carbon:overview>` that CO<sub>2(g)</sub> behaves like an ideal gas and dissolves from air into water until it reaches an equilibrium with CO<sub>2(aq)</sub> described by **Henry's Law** {eq}`eq:carbon:henrys`.

The solubility constant for CO<sub>2</sub>, $K_0$, depends strongly on temperature, and weakly on salinity ({numref}`fig:carbon:K0`).
This means that more gas will dissolve into colder, fresher water than warmer, saltier water.

```{figure} figures/carbon-K0.png
---
name: fig:carbon:K0
figclass: margin-caption
width: 70%
---
Change in $K_0$ with temperature and salinity.
```

<!-- The change in CO<sub>2</sub> solubility interacts with Thermohaline Circulation (THC) to elevate carbon concentrations in the deep ocean. -->
As surface currents move from the equator towards the poles (e.g. along Western boundary currents like the Gulf Stream), the water loses heat to the atmosphere and cools down ({numref}`fig:carbon:oceanheat`).

```{figure} figures/ocean-heat-flux.png
---
name: fig:carbon:oceanheat
figclass: margin-caption
width: 100%
---
Heat loss and absorption by the ocean. The ocean loses heat as warmer water moves to high latitudes, and gains heat as cool deep water rises to the surface in upwelling zones. Black arrows indicate major surface currents.
```

The drop in temperature causes $K_0$ to increase ({numref}`fig:carbon:K0`), allowing the water to take up more dissolved CO<sub>2</sub> at a given atmospheric pCO<sub>2</sub> ({numref}`fig:carbon:ocean-atmos`).
The water reaches as a temperature minimum at its density maximum, just before it sinks to the deep ocean, which means that this sinking water has the highest [CO<sub>2(aq)</sub>] of any surface water.
The downwelling of cold, CO<sub>2</sub>-rich water therefore removes carbon from the atmosphere.

Once in the deep ocean the water is isolated from the atmosphere until it upwells somewhere along the circulation path, 100s-1000s of years later.
Consequently, upwelling zones bring CO<sub>2</sub>-rich water to the surface, which is released to the atmosphere ({numref}`fig:carbon:ocean-atmos`) as the water warms and $K_0$ decreases ({numref}`fig:carbon:K0`).

This cycle, driven by the interaction of ocean circulation and changes in $K_0$, is known as the **solubility pump**.

```{figure} figures/carbon-ocean-atmos.png
---
name: fig:carbon:ocean-atmos
figclass: margin-caption
width: 100%
---
The difference between surface ocean and atmospheric pCO<sub>2</sub>. Notice that the ocean tends to take up CO<sub>2</sub> along the path or poleward surface currents (blue colours; e.g. North Atlantic), and release CO<sub>2</sub> in upwelling zones where carbon-rich water is brought to the surface and heated up (red colours; e.g. at the equator and in the North Pacific). The main patterns of uptake and release are similar to the patterns of water cooling and heating in {numref}`fig:carbon:oceanheat`.  These patterns can be explained by the solubility pump, but the magnitude of the difference is much larger than predicted by Henry's Law alone.
```

The solubulity pump explains first-order patterns of CO<sub>2</sub> uptake and release ({numref}`fig:carbon:ocean-atmos`), but is not enough to explain the high concentration of inorganic carbon in the ocean.
If we take the entire range of $K_0$ (0.02 to 0.07) at modern atmospheric pCO<sub>2</sub> (420 ppm), this only allows an equilibrium CO<sub>2(aq)</sub> concentration of between 8.4-33.6 μmol kg<sup>-1</sup>.
Measurements of inorganic carbon in the ocean show that the actual concentration is on the order of 2000-2500 μmol kg<sup>-1</sup>.


## CO<sub>2</sub> reacts with water

<!-- - Reacts with water to form a weak **diprotic** acid, carbonic acid, which dissociates.
  - $\mathrm{CO_{2(aq)} + H_2O \leftrightarrow H_2CO_3 \leftrightarrow HCO_3^- + H^+ \leftrightarrow HCO_3^{2-} + 2H^+}$
- {term}`DIC` is the sum of the dissolved, C-containing species:
  - $\mathrm{DIC = [CO_{2(aq)}] + [H_2CO_3] + [HCO_3^-] + [CO_3^{2-}]}$
  - Square brackets denote concentration.
  - Units generally $\mathrm{\mu mol~kg^{-1}}$ - 'average' seawater has around $\mathrm{2100 \mu mol~kg^{-1}}$
- The abundance of each species is linked to the pH of seawater ($\mathrm{pH = -\log_{10}[H^+]}$)
  - Equilibrium constants
  - Calculate $HCO_3^-$ as a fn of DIC and pH.
  - Bjerrum Plot.
  - Approximate abundance of species in 'normal' seawater.
- Ks and Temp/Sal
  - drive changes in speciation - $\dv{DIC}{pCO_2}$ as a fn of T/S -->

There is more carbon in the ocean than we would expect based on gas solubility because CO<sub>2(aq)</sub> reacts with water to form non-gaseous species that cannot exchange with the atmosphere.
Once CO<sub>2(g)</sub> is dissolved  to CO<sub>2(aq)</sub> it reacts with water to form a weak **diprotic** acid (an acid with two protons, H<sup>+</sup>) called carbonic acid.
This acid dissociates to produce the **Dissolved Inorganic Carbon (DIC)** species:

```{math}
:label: eq:carbon:dissociation
\mathrm{CO_{2(g)} \Leftrightarrow \underbrace{CO_{2(aq)}}_{dissolved~gas} + H_2O \Leftrightarrow \underbrace{H_2CO_3}_{carbonic~acid} \Leftrightarrow \underbrace{HCO_3^-}_{bicarbonate} + H^+ \Leftrightarrow \underbrace{CO_3^{2-}}_{carbonate} + 2H^+}
```

Where DIC is defined as the sum of these species in seawater:

```{margin} Units!
:class: units
Square brackets denote the concentration of a dissolved chemical species
```

```{math}
:label: eq:carbon:dic
\mathrm{DIC} &= \mathrm{[CO_{2(aq)}] + [H_2CO_3] + [HCO_3^-] + [CO_3^{2-}]} \\
 &= \mathrm{[CO_2^*] + [HCO_3^-] + [CO_3^{2-}]}
```

where $\mathrm{[CO_2^*] = [CO_{2(aq)}] + [H_2CO_3]}$ because carbonic acid is functionally absent in normal seawater - as soon as CO<sub>2(aq)</sub> reacts with water the carbonic acid dissociates to form bicarbonate and a proton.

```{admonition} Note on CO<sub>2</sub>*...
:class: dropdown
[CO<sub>2</sub><sup>\*</sup>] is a good approximation in most cases, but be aware that the reaction of CO<sub>2(aq)</sub> with water is much slower than the subsequent dissociation reactions because it requires breaking strong C-O bonds, whereas the dissociation involves adding/removing weakly-bound protons (H<sup>+</sup>).
This means that the CO<sub>2</sub><sup>*</sup> approximation may start to break down in dynamic systems where DIC speciation is far from equilibrium with CO<sub>2(aq)</sub>.
This can become important when considering rapid ocean-atmosphere interactions, because CO<sub>2(aq)</sub>, rather than than H<sub>2</sub>CO<sub>3</sub>, is the species that exchanges with CO<sub>2(g)</sub> in the atmosphere.
However, for our purposes, the CO<sub>2</sub><sup>*</sup> approximation is a good one.
```

Because CO<sub>2(aq)</sub> is the only species that exchanges with CO<sub>2(g)</sub> in the atmosphere, the speciation of DIC is critical in determining how much DIC the ocean will contain at a given atmospheric pCO<sub>2</sub>.
From Eq {eq}`eq:carbon:dissociation` we see that DIC speciation will depend on the concentration of each of the DIC species and **H<sup>+</sup>** in the water.
The concentration of H<sup>+</sup> is described by the pH of the water (pH = -log<sub>10</sub>[H<sup>+</sup>]), which tells us that the concentration of the DIC species in seawater is a function of pH ({numref}`fig:carbon:bjerrum`).

```{figure} figures/carbon-bjerrum.png
---
name: fig:carbon:bjerrum
figclass: margin-caption
width: 70%
---
The concentration of DIC species in seawater as a function of pH. The vertical blue bar shows the typical pH range in surface ocean water, and vertical dashed lines show the locations of the equilibrium constants that define the dissociation of DIC in seawater.
```

At a typical surface seawater pH of ~8.1 only ~0.5% of the DIC is in the form of CO<sub>2(aq)</sub> ({numref}`fig:carbon:bjerrum`).
Most DIC exists as the non-exchangeable species bicarbonate and carbonate.
For a typical surface ocean DIC of ~2000 μmol kg<sup>-1</sup>, this corresponds to a CO<sub>2</sub> concentration of ~10 μmol kg<sup>-1</sup>, which is within range of the [CO<sub>2(aq)</sub>] concentration predicted by Henry's Law for 420 ppm (8-34 μmol kg<sup>-1</sup> between 0-30 °C)!

The reaction of CO<sub>2(aq)</sub> with water explains why the concentration of DIC in seawater is so much higher than predicted by gas solubility.

### DIC Speciation

The speciation of DIC shown in {numref}`fig:carbon:bjerrum` is described by acid-base equilibria defined by the **equilibrium constants** $K_1$ and $K_2$:

```{math}
:label: eq:carbon:K_reactions
\mathrm{CO_{2}^*} &\overset{K_1}{\Leftrightarrow} \mathrm{HCO_3^- + H^+} \\
\mathrm{HCO_3^-} &\overset{K_2}{\Leftrightarrow} \mathrm{CO_3^{2-} + H^+}
```

Where $K_1$ and $K_2$ are defined as:

```{math}
:label: eq:carbon:Ks
K_1 &= \mathrm{\frac{[H^+][HCO_3^-]}{[CO_2^*]}} \\
K_2 &= \mathrm{\frac{[H^+][CO_3^{2-}]}{[HCO_3^-]}}
```

These $K$ values are sensitive to temperature, salinity and pressure.
The speciation of DIC and pH will therefore shift as the physical properties of the water change.

```{admonition} Temperature, salinity and pressure...
:class: dropdown

The temperature and pressure dependence of $K_1$ and $K_2$ are related to the thermodynamics of the dissociation reactions. Varying the temperature and pressure of the environment alters the standard free energy of these reactions, which in turn alters the equilibrium constants. The effect of salinity is more complex, and comes about because seawater is not an ideal solution, so ion concentration deviates significantly from ion *activity*. The activity of ions in seawater is reduced by ion-ion interactions, which varies with the concentration of individual ions, the overall ionic strength, and the temperature of the solution. Many attempts have been made to calcualte the impacts of salinity and ion-ion interactions on equilibrium constants in seawater (for example the [Pitzer equations](https://en.wikipedia.org/wiki/Pitzer_equations), [Debye-Hückel theory](https://en.wikipedia.org/wiki/Debye%E2%80%93H%C3%BCckel_theory) and the [Davies equation](https://en.wikipedia.org/wiki/Davies_equation)), but none of these attempts do a perfect job. In practice, we calculate $K_1$ and $K_2$ using empirical functions that have been fitted to careful measurements of DIC speciation in seawtaters over a range of temperature, salinity and pressure.
```

The influence of temperature and pressure is thermodynamic, because these both alter the free energy of the reaction.
The influence of salinity is more complex, and comes from ion-ion interactions in seawater altering the *activity* of ions in solution.
The details of these sensitivities are beyond the scope of this course, but be aware that temperature tends to have a larger influence on $K$ values than salinity across the range of these values found in the oceans.

The definitions of $K_1$ and $K_2$ can be combined with the expression for DIC {eq}`eq:carbon:dic` to calculate the concentration of each dissolved DIC species as a function of [DIC], pH and the equilibrium constants:

```{admonition} [CO<sub>2</sub>*] derivation...
:class: dropdown

$$
\begin{align}
DIC &= [CO_2^*] + [HCO_3^-] + [CO_3^{2-}] \\
&= [CO_2^*] + [HCO_3^-] + \frac{K_2 [HCO_3^-]}{[H^+]} & \mathrm{substitute ~ [CO_3^{2-}] ~ using ~ K_2} \\
&= [CO_2^*] + \frac{K_1[CO_2^*]}{[H^+]} + \frac{K_2 K_1 [CO_2^*]}{[H^+]^2} & \mathrm{substitute ~ [HCO_3^{-}] ~ using ~ K_1} \\
&= [CO_2^*] \left( 1 + \frac{K_1}{[H^+]} + \frac{K_2 K_1}{[H^+]^2} \right) & \mathrm{separate ~ [CO_2^*]} \\
[CO_2^*] &= \frac{DIC}{1 + \frac{K_1}{[H^+]} + \frac{K_1K_2}{[H^+]^2}} & \mathrm{solve ~ for ~ [CO_2^*]}
\end{align}
$$
```

```{math}
:label: eq:carbon:speciation
\mathrm{[CO_2^*]} &= \frac{\mathrm{[DIC]}}{1 + \frac{K_1}{\mathrm{[H^+]}} + \frac{K_1K_2}{\mathrm{[H^+]}^2}} \\
\mathrm{[HCO_3^-]} &= \frac{\mathrm{[DIC]}}{1 + \frac{\mathrm{[H^+]}}{K_1} + \frac{K_2}{\mathrm{[H^+]}^2}} \\
\mathrm{[CO_3^{2-}]} &= \frac{\mathrm{[DIC]}}{1 + \frac{\mathrm{[H^+]}}{K_2} + \frac{\mathrm{[H^+]}^2}{K_1K_2}} \\
```

The values of the equilibrium constants $K_0$, $K_1$ and $K_2$ have been carefully determined for seawater, and can be calculated as a function of temperature, salinity and pressure.
At standard salinity and temperature (35, 25 °C) and 1 atmosphere pressure (surface seawater), these K and pK (-log<sub>10</sub>K) are:

|       | $K$   | $pK$        |
|:------|-------|-------------|
| $K_0$ | $2.839 \times 10^{-2}$ | 1.547 |
| $K_1$ | $1.422 \times 10^{-6}$ | 5.847 |
| $K_2$ | $1.082 \times 10^{-9}$ | 8.966 |

Where the pK values denote the pH at which the species are present in equal concentrations ({numref}`fig:carbon:bjerrum`).

```{admonition} Solving the DIC system...
:class: dropdown

We've now seen that knowing the concentration of DIC in seawater alone is not enough to understand ocean carbon - we also need to know the state of DIC speciation. How do we determine this?

The equilibrium equations in {eq}`eq:carbon:Ks` define a system of two equations with four unknowns ($[CO_2^*], [HCO_3^-], [CO_3^{2-}] and [H^+]$). To determine the concentration of an individual DIC species we therefore need to know two of these variables.

In reality only one of these variables, pH, can be practically measured in seawater, which presents a problem.
There are, however, two other properties that can be readily measured related to ocean carbon: DIC contencentration, and Total Alkalinity $(TA = 2 [CO_3^{2-}] + [HCO_3^-] + [minor~bases] + [OH^-] - [H^+])$, which is the sum of the charge of weak bases in seawater (don't worry about this - it's far beyond the scope of this course!).
We now have four equations and six unknowns, but three of those unknowns are relatively easy to measure in seawater.
```

### DIC, pCO<sub>2</sub> and pH

In {numref}`fig:carbon:bjerrum` we show the concentration of the DIC species changing as a function of water pH, but this is only true for a fixed DIC concentration at constant temperature, salinity and pressure.
You can see from {eq}`eq:carbon:K_reactions`-{eq}`eq:carbon:speciation` that the concentration of each DIC species and [H<sup>+</sup>] (and therefore pH) exist in an *equilibrium*, with the state of that equilibrium is defined by the $K$ values.
This means that if any component of the system is changed, all parts of the system will adjust to reach a new equilibrium state.

This has two important consequences that are relevant to our understanding of ocean carbon:

#### 1. pCO<sub>2</sub> and DIC are not linearly related

Increasing pCO<sub>2</sub> raises the concentration of [CO<sub>2</sub>\*], as defined by Henry's Law.
The majority of this CO<sub>2</sub>\* then reacts with water to form non-exchangeable DIC species, allowing the ocean to absorb additional CO<sub>2(g)</sub> from the atmosphere.
This causes the total increase in DIC per unit pCO<sub>2</sub> to be much greater than the increase in [CO<sub>2</sub>*] alone, 'amplifying' the effect of solubility pump.

The amplifying effect of DIC speciation is not uniform - it depends on the starting state of the DIC equilibrium, and temperature and salinity which set the $K$ values (note we can ignore pressure here, because atmospheric exchange only happens at the surface).
The new equilibrium state at higher pCO<sub>2</sub> has a reduced pH, which alters the balance of DIC species to favour [CO<sub>2</sub>\*].
Because more of the DIC pool exists as CO<sub>2</sub>\*, the capacity for DIC to store additional carbon over the prediction of Henry's Law is reduced at higher pCO<sub>2</sub>.

These mechanisms combine to drive a non-linear relationship between pCO<sub>2</sub> and DIC, as we can see in {numref}`fig:carbon:pCO2-DIC`.

```{figure} figures/carbon-pCO2-DIC.png
---
name: fig:carbon:pCO2-DIC
figclass: margin-caption
width: 80%
---
The change in DIC concentration and speciation (top), pH (bottom) and the relative change in DIC compared to [CO<sub>2</sub>] (middle) in warm and cold water as pCO<sub>2</sub> increases. Because CO<sub>2</sub> reacts with water, much more DIC is stored in seawater than we would expect based on Henry's Law, driving a much greater increase in dissolved carbon as pCO<sub>2</sub> increases. However, because the equilibrium state of the DIC system changes as pCO<sub>2</sub> increases, the size of this amplifying effect decreases at high pCO<sub>2</sub>. This leads to the non-linear relationship between pCO<sub>2</sub> and DIC observed here. The difference between high and low temperature water is driven by differences in the underlying speciation constants. Vertical lines show representative pre-industrial and modern pCO<sub>2</sub> values, highlighting the drop in surface ocean pH that has already occurred in the last ~200 years.
```

(carbon:solubility:ocean-acidification)=
#### 2. pCO<sub>2</sub> is negatively correlated with pH

Increasing pCO<sub>2</sub> decreases ocean pH in a process known as **Ocean Acidification** ({numref}`fig:carbon:pCO2-DIC`).
This follows directly from {eq}`eq:carbon:dic`, where we see that the immediate dissociation of carbonic acid releases a proton into the ocean.
The majority of these protons will react with CO<sub>3</sub><sup>2-</sup> to form HCO<sub>3</sub><sup>-</sup>, but the new equilibrium reached will be at a lower overall pH, with consequently different DIC speciation (towards the left in {numref}`fig:carbon:bjerrum`).
This reduction CO<sub>3</sub><sup>2-</sup> will become particularly important when considering {ref}`carbon:calcification`.

Conversely, any process that independently alters the pH of the ocean will change the speciation of DIC, allowing the surface ocean to take up or release CO<sub>2</sub>.
This becomes particularly important when considering the impact of {ref}`biological processes <carbon:biopump>`, and {ref}`carbon:calcification`.

<!-- - Describe cycle:
  - Surface cooling & equilibration
  - downwelling & transport
  - upwelling & equilibration
  - {term}`Solubility Pump`
- How to calculate equilibration?
  - Need to know DIC and one other parameter...
  - above given pH - measure of the free positive ions that are the net results of multiple acid-base equilibria in the ocean.
    - Highly sensitive to T/S - i.e. not ideal because it is not _conservative_. -->

## Modelling the Solubility Pump

To include the solubility pump in our model, we must:

1. Add a box to represent the atmosphere.
2. Parameterise the exchange of CO<sub>2</sub> between the atmosphere and the surface ocean.
3. Track the speciation of DIC in the surface ocean.
4. Track the concentration of DIC.

### 1. The Atmosphere

We will model the atmosphere as a single, well-mixed box that overlies both surface ocean boxes.
This is an OK approximation because the processes of atmospheric mixing are much faster than the processes of ocean mixing.
Our atmosphere will have a pCO<sub>2</sub>, which is related to the number of moles of CO<sub>2</sub> in the atmosphere by:

```{math}
:label: eq:3box:pCO2atmos
n_{CO2} = pCO_2~n_{air}\times 10^{-6}
```

where $n_{air}$ is the number of moles of air in the atmosphere and $pCO_2$ is in ppm. We can also calculate the mass of carbon in the atmosphere:

```{math}
:label: eq:3box:massCO2atmos
m_{CO2} = n_{CO2} 12
```

where 12 is the atomic mass of carbon. For a pCO<sub>2</sub> of 400 ppm with $n_{air}$ of 1.736x10<sup>20</sup>, this yields a total mass of ~830 GtC in out model atmosphere.

### 2. Ocean-Atmosphere Exchange

We will model exchange in the atmosphere by allowing CO<sub>2</sub> in each surface box to equilibrate with the overlying atmosphere with a characteristic timescale, $\tau^{CO2}$, which defines how quickly CO<sub>2</sub> in a surface box will equilibrate with pCO<sub>2</sub> in the overlying atmosphere ({numref}`fig:carbon:tau`).
This allows us to calculate the number of moles of C moving from the atmosphere into one of the surface boxes as:

```{margin} Units!
:class: units

$K_0 pCO_2$ is in units of $\mu mol~kg^{-1}$ if $pCO_2$ is given in ppm. This therefore has to be multiplied by water density (~1025 kg m<sup>-3</sup>) to convert to a volume concentration ($\mu mol~m^{-3}$), and a factor of $10^-6$ to convert to $\mathrm{mol~m^{-3}}$ to match $[CO_2]_i$.
```

```{math}
:label: eq:3box:CO2ex_ocean
\dv{DIC_{CO2,i}}{t} = - \left. \underbrace{\frac{V_i}{\tau^{CO2}_i}}_{\mathrm{m^3~yr^{-1}}} \left( \underbrace{[CO_2]_i - K_{0,i} ~ pCO_2 ~ \rho_i ~ 10^{-6}}_{\mathrm{mol~m^{-3}}} \right) \middle/ V_i \right.
```

Where $i$ is either of the surface boxes ($L, H$).

Conversely, the change in $pCO_2$ of the atmosphere can be calculated as:

```{math}
:label: eq:3box:CO2ex_atmos
\dv{pCO_2}{t} = \sum_{i=L,H} \left(\frac{V_i}{\tau^{CO2}_i} \left([CO_2]_i - K_{0,i} ~ pCO_2 ~ \rho_i ~ 10^{-6} \right) \right) \times 10^{6} / n_{air}
```

Where $n_{air}$ is the number of moles of air in the atmosphere, and $10^6$ converts to ppm.

To calculate the ocean-atmosphere flux, we need to know both the concentration of DIC and the state of DIC speciation to determine $[CO_2]_i$.
We can track the transport of DIC just like any other conservative tracer {eq}`eq:3box:conservative`, but keeping track of DIC speciation is a bit more complicated...

### 3. DIC Speciation

Above we calculated DIC speciation as a function of pH and the speciation constants $K_1$ and $K_2$, so can we use pH to model DIC speciation?
Unfortunately, pH is not a conservative quantity.
The $K$ values for DIC speciation are sensitive to temperature, salinity and pressure, which also make pH sensitive to these parameters.
This allows pH to change based on the physical properties of the box, so the total amount of $H^+$ in the entire model is not constant - **pH is not conservative**.
To track DIC speciation, we need a **conservative** quantity that, along with DIC, can be used to calculate the concentration of CO<sub>2</sub> in each surface box.

This conservative quantity is **Total Alkalinity (TA)**, which is tricky concept that is beyond the scope of this course.
For our purposes, it is sufficient to know that TA is approximately defined as:

```{math}
:label: eq:carbon:ta
\mathrm{TA \approx 2[CO_3^{2-}] + HCO_3^- + [...] - [H^+]}
```

And be aware that:

- TA is conservative
- TA and DIC together can be used to calculate aqueous carbon speciation ({numref}`fig:carbon:DIC-TA`).
- From {eq}`eq:carbon:ta`, we can see that *adding/removing CO<sub>2</sub> does not change TA* because $\mathrm{CO_2 + H_2O \rightarrow HCO_3^- + H^+}$, which cancel out in the definition of TA.

In practicals, you will use a [python package](https://github.com/oscarbranson/cbsyst) to calculate DIC speciation.

```{figure} figures/carbon-DIC-TA.png
---
name: fig:carbon:DIC-TA
figclass: margin-caption
width: 60%
---
DIC and TA can be combined to calculated pCO<sub>2</sub> and [CO<sub>2</sub>] at a given temperature, salinity and pressure.
```

```{admonition} No but what actually *is* TA?!
:class: dropdown

TA has multiple definitions from different fields. TA is *not* the opposite of acidity, although increasing TA will also increase pH. For a chemist, TA is "*a measure of the excess bases (proton acceptors) over acids (proton donors), and is operationally defined by the titration with H<sup>+</sup> of all weak bases present in the solution*" (Sarmiento & Gruber, 2006). In practical terms, it is the moles of H<sup>+</sup> you must add to a kg of seawater to reach the equivalence point where [H<sup>+</sup>] = [HCO<sub>3</sub><sup>-</sup>]. For an oceanographer, "*TA is equal to the charge difference between conservative cations and anions*", so is a measure of the charge imbalance of seawater. It can also be thought of as the 'buffering capacity' of water, as higher alkalinity water has more proton acceptors so can better resist changes in pH.

If you really want to know the details, section 1.2 of [Zeebe & Wolf-Gladrow (2001)](https://idiscover.lib.cam.ac.uk/permalink/f/1ii55o6/44CAM_ALMA51670486420003606) provides a comprehensive overview... but **you really do not need to know this for QES**!
```

As no processes in our model currently modify TA (but they will soon), we can model TA using only the equations for conservative tracer transport in {eq}`eq:3box:conservative`.

### 4. DIC Concentration

Now we have a way to keep track of DIC speciation, we can calculate the concentration of CO<sub>2</sub> in each surface box as:

```{math}
[CO_2]_i = f(DIC_i, TA_i, T_i, S_i)
```

This allows us to model DIC as a conservative tracer {eq}`eq:3box:conservative`, with additional terms for the exchange of CO<sub>2</sub> with the atmosphere in the surface boxes:

```{math}
:label: eq:3box:dic:solubility
\dv{DIC_L}{t} &= [\mathrm{transport}] - \frac{1}{\tau^{CO2}_L} ([CO_2]_L - K_{0,L} ~ pCO_2 ~ \rho_L ~ 10^{-6} ) \\
\dv{DIC_H}{t} &= [\mathrm{transport}] - \frac{1}{\tau^{CO2}_H} ([CO_2]_H - K_{0,H} ~ pCO_2 ~ \rho_H ~ 10^{-6}) \\
\dv{DIC_D}{t} &= [\mathrm{transport}]
```

where $[\mathrm{transport}]$ represents the conservative transport terms from {eq}`eq:3box:conservative`.
Note that the deep box is only affected by transport terms because it does not exchange CO<sub>2</sub> with the atmosphere.

<!-- ## Conservative Tracer for Speciation

A final important concept in carbon speciation is the concept of **Total Alkalinity (TA)**.
This somewhat-tricky concept is a key property for describing ocean carbon because it is *conservative* (does not change with temperature or pressure, like mass, salt or DIC).
This is important because the concentration of the dissolved carbon species and pH all vary substantially with temperature and pressure.
This makes it difficult to understand whether the carbon system is being modified by external processes, or simply responding to changes in physical conditions.
A change in DIC or TA has to be caused by an external process acting on the water body.
Along with DIC, this provides two conservative quantities that can be used to fully describe the concentration and speciation of carbon in seawater.

So now we know why we might want it, what is it?!
Total Alkalinity can be described in different ways depending on the context.
For example, TA is:
1. the charge difference between conservative anions and cations
2. the excess of proton acceptors over donors
3. the moles of acid per kg of seawater that must be added to reach the 'equivalence point', where $[H^+] = [HCO_3^-]$

For our purposes you can think of TA as 'setting' both the pH and DIC speciation in seawater such that the positive and negative charges in that water balance.
For a more complete undertanding of the topic, I recommend Section 1.2 of {cite}`Zeebe2001`.

Regardless of the precise definition you use to get there, the important species that make up TA in seawater are:

$$
TA = [HCO_3^-] + 2 [CO_3^{2-}] + [B(OH)_4^-] + [OH^-] - [H^+]
$$ -->


<!-- {term}`Total Alkalinity`
- Describes the charge balance of seawater.
- Conservative, as includes positive and negative species.
- Useful second parameter for tracking C speciation.
- No analytical solution, but...
  - Show carbonate alkalinity approximations.
  - Mention carbon calculators that do it for you. -->
