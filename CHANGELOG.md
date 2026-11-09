## [1.4.0] - 2026-11-09

### Added

- **Choose the size of your world.** Settings → World screen has a new Size row: Extra small, Small, Normal or Large. The whole world grows or shrinks together, and your choice is remembered.
- **A Moon without the sky.** A new Sky switch in the Moon's details hides the stars, planets, Sun and Earth, leaving only the ground, the lander and the astronauts.
- **Unlock the holo editions.** In Settings → holo editions, copy your Mac's ID and send it to erewh, then paste the code you get back to turn every world's cartridge holo.

### Changed

- **The Moon previews instantly.** Hovering the Moon's cartridge in the menu shows it straight away.

### Fixed

- **No cartridge plays while the world is off.** The slot stays empty until you turn the world back on, and hovering a cartridge no longer restarts its preview.
- **Cartridge labels are easier to read.** The edition name and number on each label are now a deeper coral.

## [1.3.0] - 2026-11-08

### Added

- **Worlds come on cartridges.** Each world in the menu is now an erewh cartridge on a shelf. Choose one and it slides into the slot.
- **Editions, and a rare holo edition.** Every Mac gets its own edition of each world, with its own label picture. About one Mac in twelve gets a holo edition, with foil that catches the light as you move the pointer.
- **Choose the screen right from the menu.** With more than one display, click "now playing on …" above the world's name to see your displays as they are arranged. Hover one to light it up, click it to move the world there.
- **A new horizon on a new screen.** Plug in a display and a warm glow dawns briefly along its bottom edge.
- **See what's new.** Before you restart for an update, read what it brings. After updating, a quiet note links to the changes, and Settings lists every version's notes.
- **The menu is a Mac window.** It has the familiar window buttons, drags by its title bar, and the green button zooms it to fill the space above the world.
- **Update progress.** An update you start shows how far along the download is.

### Changed

- **The Sea in perspective.** Near water moves fastest and far water slows toward the horizon, with whitecaps breaking up close.
- **The Moon's ground is pixel art.** It sits on the same grid as the Meadow, with grain, pebbles and boulders that cast shadows.
- **Calm worlds are easier on your battery.** When nothing moves quickly, the Meadow and the Sea draw less often, and look just the same.
- **One choice per display in Settings.** Each screen is listed once, and your Mac's own screen is called "This Mac".
- **Straight back to your world after an update.** The app skips the splash and the world rises right back in.

### Fixed

- **A failed update says why.** It tells you, for example, to check your connection, and after a second try offers the download page.
- **The menu stays solid at any size.** It no longer turns see-through when made smaller than its opening size.

## [1.2.0] - 2026-11-05

### Added

- **Updates arrive on their own.** erewh horizon checks for a new version at launch, every few hours and when your Mac wakes, downloads it in the background and tells you when it's ready. Nothing changes until you choose Restart.
- **Keep the version you have.** Turn off Automatic updates and erewh horizon stays on your current version: no checks, no downloads.
- **Choose which screen the world lives on.** With more than one display, pick the menu-bar screen or any other. The choice is remembered, and if that display is unplugged the world waits on the menu-bar screen until it comes back.
- **A Settings page.** Where the world lives, automatic updates and the app's version and signature now have a page of their own, opened from the ⋯ menu.

### Changed

- **A quieter change between worlds.** Hovering or choosing a world in the menu dims softly into the new one instead of opening the horizon.
- **The Sea is easier on your battery.** It now uses less than half the processor time it did, and looks just the same.
- **The app is called erewh horizon** in Finder, Spotlight, Launchpad, the menu and the disk image.

### Fixed

- **Updates never get stuck on "Updating…".** A failed update now says so and lets you try again.
- **The update button fits how you installed erewh horizon.** A Homebrew install offers the brew command to copy, a copy still on the disk image asks you to move it to Applications first, and a copy in a folder you can't change offers the download page.

## [1.1.0] - 2026-11-05

### Added

- **Use the keyboard in the menu.** The left and right arrow keys move between the worlds and between a world's modes.

### Changed

- **A mode changes only when you click it.** Hovering a season or a sea state shows what it is; your world stays as it is until you choose.
- **Closing the menu slides it away.** It drops off the bottom of the screen. Only Turn off switches it off like an old TV.
- **Cleaner changes in the menu.** Opening a world's details and coming back are one movement instead of two pages blending, and a new world or mode opens along the horizon instead of fading through the old one.
- **A quicker menu.** Clicks and hovers answer at once, and the menu uses far less of your Mac while it is open.
- **Smoother fast-forward on the Moon.**

### Fixed

- **The world stays on your main display.** With more than one screen, the world could appear in the middle of a screen, or move to whichever screen you last clicked. It now lives along the bottom of the display with the menu bar, and follows it if you change your main display.
- **Feeding the Meadow follows your pointer exactly**, also with the Dock at the bottom of the screen.
- **The menu's ⋯ list no longer opens already open.**

## [1.0.0] - 2026-11-05

### Added

- **erewh horizon.** Desktop Pet is now erewh horizon, no. 01 from erewh: a living world along the bottom of your screen, a Meadow, the Sea or the Moon, running on the real sun, moon and seasons.
- **A new menu.** Click the menu bar icon and the world you're watching grows into a panel. The world plays behind it, live, under the sky of the hour. Pick a world from its cover, then its mode, and watch your horizon change as you hover. Closing it switches off like an old TV.
- **Modes for every world.** Choose the Meadow's season, the Sea's state or the Moon's sky speed, or leave them on Auto to follow the real calendar and weather. Hover to try one, click to keep it.
- **Every eclipse from 2020 to 2040.** The Moon's eclipse list now covers twenty years, and it opens instantly.
- **A new splash.** Peek rises over the real sky of the hour while erewh's tagline types the world's own word.

### Changed

- **Seasons look like seasons.** Choosing Winter now covers the Meadow in snow; before, the season only changed its colours.
- The menu can be dragged by its top bar and resized from its edges.

### Removed

- **The desktop pet.** erewh horizon is worlds only.
- The Lighting switch. Lighting is now off for everyone.

## [0.29.2] - 2026-11-02

### Fixed

- **The Meadow no longer crashes when the strip resizes.** Changing the screen size or display setup could close the app with no warning. This was the "keeps dying" crash.
- **No more crash at launch with no display.** Opening the app with the lid closed, or with the display asleep or unplugged, used to stop it. It now starts and fits the screen when one returns.
- **No more crash when a window gets narrower than the pet.** Dragging the window the pet is standing on, or showing a speech bubble in a very narrow space, could stop the app.

### Changed

- **A little less work on every frame in the Sea.** The sea's weather is worked out once a day instead of on every frame.

## [0.29.1] - 2026-11-01

### Changed

- **A better disk image.** The mounted disk now shows the logo, and its window has an arrow to Applications and the steps for allowing the app the first time you open it.

## [0.29.0] - 2026-11-01

### Added

- **A logo.** Meet Peek, a dark animal rising from the bottom edge on a coral field. Desktop Pet now has its own app icon and menu bar glyph.

### Changed

- **No more welcome screen.** The Pet or World question and its full-screen animation are gone. Launch now plays a short logo splash that takes no clicks and doesn't take focus, then opens whatever was on last time.
- **The first launch after updating opens the World.** Your choice is remembered from then on.
- The Credits tab in the control panel is now called Support.

### Removed

- The Credits menu item.

## [0.28.0] - 2026-11-01

### Added

- **Animals meet each other.** Two of the same species now walk up to each other and interact: stags, bucks, reindeer and moose lock antlers, and does cuddle, box or lie down together. Tired animals tend to rest, and a scare ends a meeting early.
- **Choose how many.** Each animal now has a number control next to How often, so you can have from one to five of it.
- **More plants in the meadow.** Tussocks, timothy, oat grass, clover and rushes grow in patches through the grass, and rushes gather around spring puddles.
- **Shadows that follow the sun.** Animals cast a shadow to the right in the morning, directly below at noon and to the left in the evening. Shadows fade as the sun gets low, weaken in the rain and disappear at night.

### Changed

- **Animals now stand in the grass.** Grass grows to its real height, in front of the animals as well as behind them. Hooves disappear into it, and blades bend around each leg and spring back. Wind now travels along the meadow in waves.
- **Real ground under the grass.** The flat brown stripes are now dark topsoil over paler earth, with roots, stones and uneven layers. The ground cracks in dry weather.
- **Truer moose legs.** All four legs are now dark at the top and a muted grey-tan below the knee, in place of the bright pale hind legs.
- Fireflies fly a little higher, just above the taller grass, and their glow reaches further.

### Fixed

- Firefly light now lands on the grass around the firefly instead of in the wrong spot.

## [0.27.0] - 2026-11-01

### Added

- **A new meadow.** Stag, doe, buck, reindeer and moose replace the old creatures, with all-new art and new moves: looking around, shaking, grooming, stretching and a signature move for each species.
- **Animals with minds of their own.** Each one now decides for itself based on hunger, tiredness and nerves. They graze in routines, turn with their whole body, react to your cursor, pass alarm to each other and keep their own bedtimes.
- **All-new art for the sea and the Moon.** The ships, iceberg, buoys, gulls, floating objects, shark fins, lander, astronauts, rover and boulders have all been redrawn.
- **How often.** Every creature now has a Never, Rare, Sometimes or Often choice in place of an on/off switch.
- **Pick your shark fins.** Choose from nine fin types.

### Changed

- **Everything is true to scale.** Every object is sized from its real dimensions on one shared scale, and each world applies a single zoom to everything in it. The moose stands 2.1 m at the shoulder, and the Titanic is its full 269 m. The world strip is slightly taller to fit them.
- **Creature choices reset once.** The first launch of this version clears your saved creature choices, so all the new creatures can appear. Set them again under How often.
- **A cleaner World tab.** Creatures show their sprites, emoji are gone, and clicking a choice no longer reloads the page or loses your place.
- Sharks now surface where you can see them and swim faster.

### Removed

- The chicken, snake, rat, bat, garden birds, cats, songbirds, butterflies and bees, along with their control panel sliders.
- The flag beside the lander.

### Fixed

- Sea and Moon sprites stay readable on light desktops. Pale outlines no longer disappear, the lander no longer shows gaps between its panels, and thin parts no longer break up on non-Retina screens.
- Meadow sprites no longer show a pale fringe at night on non-Retina screens.
- Animals now wake up at dawn instead of staying stuck asleep, and they stay as long as they should rather than leaving early.

## [0.26.0] - 2026-10-29

### Added
- Disk image install: download `DesktopPet.dmg`, drag DesktopPet to Applications, and it starts at login and keeps itself up to date. It is not notarized by Apple, so allow it once under System Settings → Privacy & Security → Open Anyway.

### Changed
- Homebrew and the install script now always install the newest release.

## [0.25.0] - 2026-10-27

### Added

- **Footprints and rover ruts stay where they are made.** The Moon has no wind, so tracks never fade. Walking the same ground over and over wears it into a trodden path instead of piling up more marks.
- **City lights on the Earth's night side.** Lights appear on land under a clear sky after twilight, in the places where people actually live, and they turn with the globe. During a lunar eclipse the whole disc facing the Moon is lit up.
- **A flag beside the lander.** It hangs from a top rod and does not ripple. It is almost white, because after more than 50 years of unfiltered sunlight the real ones are almost certainly bleached.
- **A spacecraft crosses the sky.** A low orbiter passes overhead the way the ISS does seen from Earth: only around lunar dawn and dusk, about once every two hours, horizon to horizon in roughly four minutes.

### Changed

- **The Moon's sky is far cheaper to draw.** A frame of the sky takes up to 15× less time, and on Retina displays it takes about half as long as before. Memory use is down by a large image the sky no longer needs.

## [0.24.1] - 2026-09-06

### Fixed

- **A lunar eclipse no longer flashes a diamond of light.** Seen from the Moon, the Earth is far larger than the Sun and its edge is atmosphere rather than mountains, so the flare and the beads beside it were never something you could actually witness from there. The Sun now slides cleanly behind the Earth's edge and settles into totality, where the corona and the Earth's copper ring of refracted sunlight light the scene on their own.

## [0.24.0] - 2026-09-06

### Added

- **An eclipse seen from the Moon now looks the way it would.** The Sun crosses behind the Earth at its true apparent size instead of a compressed sky scale, so a partial eclipse is a clean crescent bitten out of the Sun rather than a smudge. At the moments the Sun disappears and returns, a diamond of light flares on the Earth's edge with red chromosphere beads beside it.
- **The corona has weather.** Instead of a fixed halo, long streamers sweep out from the Sun's equator while the poles stay pinched and dark, and the whole thing drifts and undulates while you watch. The Earth's ring of refracted sunlight now tracks the Sun as it moves behind the disc, so the brightest part of the ring is always on the side the Sun is really on.

### Fixed

- **Planets sat on a single line across the sky.** The Sun and planets now carry their true tilt above and below the ecliptic, which also stops planets from appearing to pass behind the Earth when they were never actually behind it.
- **The timeline scrubber grabbed the scroll wheel.** Dragging the timeline works by click and drag only, so scrolling or a trackpad swipe no longer throws the date around by accident.
- **A dragged scrub could jam the controls.** Releasing the timeline outside its track left it stuck mid-drag and the panel's buttons stopped responding.
- **The day and Earth readouts froze while time was running.** They now keep up as the clock moves, and the active speed is shown as the one that is actually selected.

## [0.23.0] - 2026-09-06

### Added

- **Watch the Moon's sky move.** A time player with speeds from real time to three days a second, a rewind, and a way back to now — the lunar day, the Earth's rotation and the libration all take days or weeks, so at real time none of them are visible.
- **Pick an eclipse and watch it.** A calendar of real solar and lunar eclipses; selecting one travels there and drops to a speed the event is watchable at. Previously reachable only in development builds.
- **Planets show their phases.** Mercury and Venus run from full disc to thin crescent, lit from the direction the sun really is. The outer planets never do, because from here their phases genuinely are invisible.
- **A total eclipse looks like one.** The Earth goes black and wears a copper ring of refracted sunlight, the sun's corona appears around it, and the ground you are standing on is lit deep red — the same light that makes an eclipsed Moon look coppery from Earth. The corona's shape follows the sun's 11-year activity cycle, so two eclipses years apart are not the same picture.

### Fixed

- **The Moon's time and eclipse controls did nothing.** They drew, and every click was ignored. This is the headline fix if you were on 0.21.
- **Changing speed jumped the clock to today.** Browsing to an eclipse and picking a slower speed sent you home.
- **The starfield was different on every launch.** The sky is now the same sky each time you open it.
- **The sun's shadows were wrong.** At lunar noon almost no shadow was cast at all; shadow lengths now follow the real solar altitude. Cast shadows also read as shapes lying on the ground rather than as thin ruled lines.
- **A sunlit plain now looks sunlit.** Daylight was rendering dark, and the ground was lit blue during a total eclipse instead of red.
- **The lander's light pooled on the ground with its lamps off.**

### Changed

- **Much less CPU.** Idle use in the Moon world drops from roughly 15% to 3–4%. Fast-forward and rewind are far cheaper: the Earth's disc is drawn about five times faster, and the galaxy is no longer rebuilt from scratch on every button press.

## [0.22.0] - 2026-09-03

### Added
- The sun now moves across the lunar sky, and everything on the ground casts a shadow. Over the month the light swings from one horizon to the other, so shadows fall long to one side in the lunar morning, shrink to almost nothing at midday, and stretch away the other way by evening. The lander, the rover and the crew all throw their own, which finally sets them on the surface instead of in front of it. Craters deepen as the sun drops — shallow rings at noon, black pits near dusk.
- Through the fortnight-long lunar night the Earth takes over as the light. It hangs in one fixed patch of sky and never sets, so its light comes from a constant direction — dim, blue, and soft, with none of the hard edges the sun gives. It is brightest when the Earth overhead is full, which is exactly when the Moon around you is darkest.

### Fixed
- The lander's cabin windows and docking lamp now actually glow warm at night. They were being washed by the same cold blue cast as the rest of the night scene, which left them a dim grey — the craft looked abandoned rather than occupied. A light now pools on the regolith beneath it too, fading up as the sun goes down.

## [0.21.0] - 2026-09-02

### Added
- The Moon now has a sky. Stars sit behind your windows rather than over them, and they never twinkle — there is no air up there to make them shimmer, so they hold perfectly still, and they stay out in broad daylight too.
- Earth hangs in that sky, and it is the real one: actual coastlines, weather, and polar ice. It turns once a day, so the face you see depends on when you look — Europe and Africa in the morning, the Americas later on. The lit half follows the real clock and calendar, so the line between day and night falls where it truly falls, tilts with the season, and leaves the Arctic in permanent daylight through midsummer. Earth never rises or sets, because the Moon always keeps the same face turned toward it; it only drifts slowly around one patch of sky over the month.
- Astronauts now move like they are on the Moon. They lope in long, slow, floating strides at one-sixth gravity, and their boots and the rover's wheels kick up regolith that arcs and falls in clean curves — with no air to hold it up, lunar dust never billows or hangs.
- Meteorites strike, rarely. Every ten to twenty-five minutes something comes down, flashes on impact, throws up a spray of debris, and leaves a fresh crater behind. The plain slowly accumulates new scars while you work. There is no fiery streak, because there is no atmosphere to burn in.

## [0.20.1] - 2026-09-02

### Fixed
- The lighting switch in the control panel now works in the released app. It was only ever wired up in development builds, so anyone whose lighting had been switched on was stuck with it — the toggle looked normal but did nothing. Lighting remains off unless you turn it on.

## [0.20.0] - 2026-09-02

### Added
- A new Moon world joins the meadow and the sea: a grey regolith plain under a black airless sky, with a lander parked as a permanent landmark, a rover that crosses now and then, and astronauts working nearby. The light follows a real lunar cycle — a fortnight of hard white sun, then a fortnight lit only by cold Earth-light.
- Optional local lighting for the ambient strips, off by default and switchable in the control panel. Fireflies and lightning cast real light onto the ground, with soft shadows, bloom, and reflections on the sea. It is still rough on Retina displays, so it stays opt-in for now.

### Changed
- The Moon's craters are drawn as shallow elliptical bowls with a cast shadow on the inner wall, instead of flat notches, and the plain gently undulates rather than running as a straight line.
- The Moon's surface band is shorter, so it no longer covers the bottom edge of windows resting near it.

## [0.19.0] - 2026-07-09

### Added
- A painted pixel-art galleon now sails the sea scene — a new ship you can toggle on.
- A large red-and-white tower buoy joins the sea as a taller navigation marker alongside the existing channel buoys.

## [0.18.0] - 2026-06-28

### Changed
- Flotsam and buoys now clip at their authored waterline so submerged geometry stays hidden, preserving the surface-only illusion. Lifted, thrown, and capsized floats still draw unclipped.
- Redrew the channel buoy with a rounded hull, reflective band, lattice cage, and a blinking lantern; buoy placement and red/green colour now vary per launch.

## [0.17.0] - 2026-06-28

### Added
- Drifting flotsam and anchored buoys add life to the sea scene
- "Turn Off" control with a safe quit so pets shut down cleanly

### Changed
- Polished control panel sidebar and pet cards for a cleaner look
- Welcome nebula now uses a vibrant base pass instead of a drop shadow

## [0.16.0] - 2026-06-26

### Fixed
- The in-app update button now keeps its state reliably, fixing a race where it could briefly flip back to "Restart" after an update.

## [0.15.0] - 2026-06-26

### Changed
- Control panel refresh: cleaner, card-based layout with a bordered control area and clearer, more readable world and pet selectors
- The version label now toggles details on click (with a dismiss when you click away)

## [0.14.0] - 2026-06-26

### Added
- Ko-fi tip button in the control panel

## [0.13.0] - 2026-06-25

### Added
- Card-based world and pet selectors in the control panel
- Terraform reveal animation when a world is introduced
- Floating developer metrics HUD; switching worlds now starts a fresh world

### Performance
- Ambient creatures move at the same speed whatever the frame rate

## [0.12.1] - 2026-06-24

## Performance

- Lower CPU and power use on battery: the pet draws fewer frames when it can.

## [0.12.0] - 2026-06-24

- Sea scene: animated water ripples and a storm weather mode
- Sea-state picker to switch between calm and rough seas
- Seagulls that fly across the sea scene

## [0.11.1] - 2026-06-24

### Fixed
- Meadow: deer no longer jitters or flips direction when the cursor sits on the food it's eating; it flees if you get close, otherwise waits calmly until the cursor moves off, then eats

## [0.11.0] - 2026-06-24

### Changed
- Control Panel redesign: minimal layout with a bold solid sidebar, paw-print icon, and refreshed typography
- Welcome screen polish: refined typography and aesthetics

### Fixed
- Control Panel tab routing
- Welcome screen blending and layering glitches
- Automatic updates

## [0.10.2] - 2026-06-23

### Fixed
- Welcome screen: fix severe lag when the pet starts at login
- Welcome screen: increase deer animation framerate and walk speed to better suit the small card space

## [0.10.1] - 2026-06-23

### Fixed
- Welcome: defer the World card's meadow scene until the card itself has appeared

## [0.10.0] - 2026-06-23

### Added
- Galaxy landing screen: a starfield welcome with an orbiting nebula where you pick **Pet** or **World** to start
- Meadow: pull and throw berries to feed the deer

### Changed
- Welcome screen polish: title, subtitle, and stars toned to grey for a calmer look

### Fixed
- Welcome: keep the World card's meadow contained inside the card

## [0.9.0] - 2026-05-17

### Added
- Sea world: an Atlantic underwater scene with day/night and seasonal water state, a shark that flees from the mouse pointer, and a calendar date picker for previewing the year
- New meadow creatures: snake, rat, bat, chicken, and a garden robin. Deer stays on by default; the rest are opt-in
- Creature-variant framework: animals can ship as interchangeable variants (e.g. Bird → robin) with an expandable control-panel UI and per-variant selection
- Principled creature scaling so on-screen sizes are biologically proportional rather than hand-picked, with creatures grouped by zoological class in the control panel

### Changed
- Ambient is now multi-world (Meadow + Sea) with day-driven state shared across worlds

## [0.8.0] - 2026-04-28

### Added
- Living spring calendar: each day of spring looks distinct. A per-year flower roster gives every flower a stable position with its own first-bloom and petal-fall day, so blooms persist day-to-day and only a few open or fall each morning
- Daily weather (clear/overcast/rainy/windy) driven by a Markov chain that clusters into 2–4 day stretches, plus a one-shot firstWarmDay signaling spring emergence
- Rain drop and petal drift particle layers tied to the weather state
- Dev tab: prev/next day buttons, a media-scrubber pill for day navigation, a "Play spring" 1 day/sec scrubber, and a weather + bloom-stage readout

### Changed
- Weather now modulates seasonal effects with realistic insect biology: bees and butterflies effectively disappear in rain (~0.02× activity), wind drops butterflies more than bees, overcast suppresses butterfly basking, and firstWarmDay produces a signature emergence boost
- Ambient dev tab layout: day stepper and play control moved to the top of the date card, with extra breathing room above the year calendar

## [0.7.0] - 2026-04-24

### Added
-

### Changed
-

### Fixed
-

## [0.6.0] - 2026-04-24

### Added
- Sunrise/sunset computed from timezone-inferred latitude via the NOAA solar equation — dawn/day/dusk/night bands now track the real sun
- Smooth tint interpolation across twilight replaces the previous hardcoded 4-hour jumps
- Continuous seasonal tint blends between adjacent-season anchors so the palette shifts gradually each day instead of snapping on month boundaries; hemisphere auto-detected from timezone
- Meadow growth curve drives flower density, color palette (white/yellow/pink/red/purple), and grass height
- Seasonal ground features baked into the terrain bitmap: bare-dirt dry patches (peak August), winter snow dusting (peak late January), spring puddles (peak early April) — each fades in/out via a narrow cos² bell curve

### Changed
- Default control panel window size bumped to 900×820
- "Update available" block in sidebar: stacked text + full-width button with explicit hover/active states
- Verified-build tooltip moved to the right of the sidebar and is easier to read
- The control panel opens instantly, without a delay or a flash

## [0.5.0] - 2026-04-22

### Added
- Ambient grass sways in a light breeze with occasional stronger gusts
- Fireflies appear above the grass at night — realistic burst-based flashes that scatter across the strip
- Pause toggle directly in the Pets tab header

### Changed
- Sidebar reorganized: Controls moved from the Pet section to General (next to Credits); Pet section order is now Pets → Actions → Context → Reminders
- Control panel opens on the Pets tab by default

### Fixed
- Sidebar selection no longer highlights the wrong row

## [0.4.1] - 2026-04-22

### Fixed
- Ambient strip (grass and deer) no longer renders over the Dock on screens with the Dock enabled

## [0.4.0] - 2026-04-19

### Added
- Ambient world: a persistent layer at the bottom of the screen that runs independently from the pet
- Deer (Calciumtrice sprites, recolored with a custom warm palette) that wander, graze, sleep at night, and flee from the mouse
- Day/night cycle with time-of-day tinting baked into the ground palette; spawn rate, population cap, and behaviors shift across dawn/day/dusk/night
- Per-instance personality on spawned creatures (speed, graze bias, flight radius, flee cooldown)
- Hand-drawn pixel terrain: layered dirt, soil edge, grass blades, pebbles, occasional flowers
- Credits tab (replaces the old footer modal), with links that open in your browser

### Changed
- Control panel reorganized into Pet / Ambient / General sidebar groups
- Creatures can be enabled/disabled per ID; disabling culls live instances, re-enabling triggers a fresh spawn within ~1s

## [0.3.0] - 2026-04-13

### Added
- Actions are now grouped into categories: Movement, Reactions, Social, Quirky, and pet-exclusive sections
- Events (actions that occupy screen space) are separated into their own section with a clear label
- Active event banner with a Stop button appears at the top when an event is running

### Changed
- Action descriptions no longer truncate — they wrap so the full text is visible
- Lone actions at the end of a section span the full width instead of leaving an awkward gap
- Clicking an action flashes briefly to confirm it fired

## [0.2.0] - 2026-04-07

### Added
- Drowsy eyelids animation during sleep

### Changed
- Mini-game polish: Tokyo city growth, football urgency effects, team colors

### Fixed
- Alignment for tears and cover-eyes sprites
- Scoreboard team color dot
- Removed unintended squish on mini-action and sleep transitions

## [0.1.0] - 2026-03-01

- First release
