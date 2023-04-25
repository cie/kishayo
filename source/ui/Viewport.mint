component Viewport {
  style viewport {
    background: #2a83e2;
  }

  state t = 0
  use Provider.AnimationFrame {
    frames: (ms: Number): Promise(Void) {
      Clock.tick(ms)
      next { t: Clock.t }
    }
  }

  fun render : Html {
    <svg::viewport viewBox="0 0 100 100">
      <SeaView t={Clock.t}/>
    </svg>
  }
}
