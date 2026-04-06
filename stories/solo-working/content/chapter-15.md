# Chapter 15 — The Implementation War

*A project plan is a work of fiction. The implementation is the harsh, non-fiction sequel where the 'happy path' is blocked by legacy code, office politics, and the fact that humans are the most unreliable components in any system.*

---

The 11th floor was a construction site. 

Not with hammers and nails, but with lines of code, Jira tickets, and the steady, rhythmic tapping of twenty-four developers who had finally found something worth working for. 

Juan dela Cruz stood in the center of the "War Room"—a corner of the office that they had reclaimed by moving some filing cabinets. His Rank-D status was now a permanent fixture in the eyes of everyone on the floor.

```
╔══════════════════════════════════════════╗
║               PROJECT STATUS             ║
║                                          ║
║  Project: PHOENIX IMPLEMENTATION         ║
║  Phase: 2 (Database Migration)           ║
║  Completion: 34%                         ║
║  Team Velocity: [ OVERCLOCKING ]         ║
╚══════════════════════════════════════════╝
```

"Rodel," Juan whispered. "Monitor the migration script for the customer loyalty points. Apex has three million records, and half of them have 'Null' values in the expiry field."

The shadow was already deep in the server rack, its dark form flickering as it processed the incoming data. 

*"The Null values are a trap, boss,"* Rodel warned. *"If we auto-populate them, we trigger a logic error in the rewards engine. We need a manual check for the top-tier accounts."*

"Assign the manual check to the Rank-E team," Juan said. "I want them to feel the weight of the data."

As he spoke, the elevator doors opened. 

It wasn't Isabel Reyes. It wasn't Aldrich. It was a man named *BENJAMIN 'BENNY' LIM*.

Benny was a Rank-B Senior Developer. He had been at the company for ten years, and he was known for two things: being an absolute wizard with legacy COBOL systems, and being a toxic gatekeeper who hated anyone younger or higher-ranked than him.

```
╔══════════════════════════════════════════╗
║               BOSS ENCOUNTER             ║
║                                          ║
║  Name: BENNY (THE GATEKEEPER)            ║
║  Rank: B (Legacy Specialist)             ║
║  Status: [ RESISTANT ]                   ║
║                                          ║
║  Special Attack: 'The Legacy Wall'       ║
║  (Can block any new API from accessing   ║
║  the old database)                       ║
╚══════════════════════════════════════════╝
```

Benny walked into the War Room, his arms crossed over his chest. He looked at the Jira board, then at Juan.

"Dela Cruz," Benny said, his voice like gravel. "I heard you’re trying to hook your fancy 'Phoenix' engine into my legacy core."

"It's the only way to get the real-time data, Benny," Juan said, not looking up from his tablet. "The client won't accept a twenty-four-hour delay."

"I don't care what the client wants. My core is stable. Your engine is a experimental mess. I’ve already disabled the API hooks. You’re not touching my data."

```
║  ALERT: PROGRESS STALLED.                ║
║  Benny has activated [ THE LEGACY WALL ].║
║  Completion: 34% → 34% [ STALLED ]       ║
╚══════════════════════════════════════════╝
```

The room went quiet. The developers looked at Juan. This was the first time someone on the 11th floor had openly challenged his authority since the pitch. 

Juan looked at Benny. Through the **CORRUPTION TRACKER**, he could see the man's True Rank.

```
║  NAME: BENNY                             ║
║  OFFICIAL RANK: B                        ║
║  TRUE RANK: B+                           ║
║  STATUS: [ AFRAID OF IRRELEVANCE ]       ║
╚══════════════════════════════════════════╝
```

Benny wasn't being malicious. He was afraid. He saw the new system as the end of his career.

"Benny," Juan said, standing up. "I’m not trying to replace your core. I'm trying to wrap it in something that makes it look as good as it actually is."

"Don't give me that 'wrapper' talk. I know how this ends. You get the credit, and I get the 'Legacy Maintenance' pile."

Juan walked over to Benny’s desk—the one covered in old manuals and half-disassembled hardware. He reached into his pocket and pulled out a small, encrypted flash drive.

"What's that?" Benny asked, suspicious.

"It’s the original documentation for the Skyfall migration," Juan whispered. "The part that explains how the legacy core survived when everything else failed. It wasn't luck, Benny. It was your error-handling logic."

Benny’s eyes widened. He grabbed the drive. "Where did you get this? This was deleted."

"I documented it. And if you help us build the Phoenix adapter, I’ll make sure the documentation for the new system lists your core as the 'Invincible Heart' of the project."

Benny looked at the drive, then at Juan. The 'Resistant' status in his vision began to flicker.

```
╔══════════════════════════════════════════╗
║               BOSS DEFEATED              ║
║                                          ║
║  Victory!                                ║
║  Loot Dropped: [ LEGACY ACCESS CODES ]   ║
║  Exp Gained: 1,500                       ║
╚══════════════════════════════════════════╝
```

"Fine," Benny grunted, already plugging the drive into his computer. "But if your API crashes my core, I’m the one who gets to delete the repository."

"Deal," Juan said.

```
║  PROGRESS RESUMED.                       ║
║  Completion: 34% → 42%                   ║
╚══════════════════════════════════════════╝
```

As Benny started typing, his hands moving with a speed that rivaled Rodel’s, Juan felt a hand on his arm. 

It was Cynthia. She had been watching from the corner.

"You're getting too good at this, Juan," she said, her voice full of concern. "You didn't just win a fight. You recruited a veteran. But look up."

Juan looked toward the elevator. 

Isabel Reyes was back. She wasn't looking at her tablet this time. She was looking at the 14th-floor ceiling. And then, she looked at Juan. 

She held up a single finger—one. 

*One day left.*

The audit for *Aethelgard* was almost finished. And once she was done with the CEO, she was coming for the man who had sent the logs.

---

*End of Chapter 15*

---
**Word Count:** ~1,150
**Arc:** 2 — The Client Pitch: Dungeon Boss Appears
**Chapter Status:** Complete
**Next Chapter:** Chapter 16 — *The 24-Hour Sprint*

Juan has Benny on his side! But Isabel is closing in. In Chapter 16, the implementation hits the "Final Sprint" before the client's first live test. Juan will have to use both shadows simultaneously for twenty-four hours straight. Will his stamina hold? Ready?