document.addEventListener('DOMContentLoaded', () => {

    /* ── Panel Navigation ── */
    let currentPanel = 1;

    window.goPanel = function(num) {
        const prev = document.getElementById(`panel-${currentPanel}`);
        const next = document.getElementById(`panel-${num}`);
        if (!next || num === currentPanel) return;

        prev.classList.add('exit');
        setTimeout(() => {
            prev.classList.remove('active', 'exit');
        }, 400);

        next.style.transform = 'translateX(40px)';
        next.classList.add('active');
        requestAnimationFrame(() => {
            requestAnimationFrame(() => {
                next.style.transform = '';
            });
        });

        currentPanel = num;
        document.getElementById('current-panel').textContent = num;

        // Update bottom nav active state
        document.querySelectorAll('.nav-item').forEach((el, i) => {
            el.classList.toggle('active', i + 1 === num);
        });
    };

    /* ── Chip Toggle ── */
    document.querySelectorAll('.chip-group').forEach(group => {
        group.querySelectorAll('.chip').forEach(chip => {
            chip.addEventListener('click', () => {
                group.querySelectorAll('.chip').forEach(c => c.classList.remove('active'));
                chip.classList.add('active');
            });
        });
    });

    /* ── Mood Card Toggle ── */
    document.querySelectorAll('.mood-grid').forEach(grid => {
        grid.querySelectorAll('.mood-card').forEach(card => {
            card.addEventListener('click', () => {
                grid.querySelectorAll('.mood-card').forEach(c => c.classList.remove('active'));
                card.classList.add('active');
            });
        });
    });

    /* ── LUT Card Toggle ── */
    document.querySelectorAll('.lut-grid').forEach(grid => {
        grid.querySelectorAll('.lut-card').forEach(card => {
            card.addEventListener('click', () => {
                grid.querySelectorAll('.lut-card').forEach(c => c.classList.remove('active'));
                card.classList.add('active');
            });
        });
    });

    /* ── Color Control Live Update ── */
    document.querySelectorAll('.cc-row').forEach(row => {
        const slider = row.querySelector('.cc-slider');
        const val = row.querySelector('.cc-val');
        if (!slider || !val) return;
        slider.addEventListener('input', () => {
            const label = row.querySelector('.cc-label')?.textContent;
            val.textContent = label === '색온도' ? slider.value + 'K' : slider.value;
        });
    });

    /* ── Render Simulation ── */
    window.startRender = function() {
        const btn = document.getElementById('render-btn');
        const progress = document.getElementById('render-progress');
        const fill = document.getElementById('progress-fill');
        const label = document.getElementById('progress-label');

        btn.disabled = true;
        btn.textContent = '렌더링 중...';
        progress.classList.remove('hidden');

        let pct = 0;
        const interval = setInterval(() => {
            pct += Math.random() * 4 + 1;
            if (pct >= 100) {
                pct = 100;
                clearInterval(interval);
                label.textContent = '완료!';
                btn.textContent = '✓ 렌더 완료';
                btn.style.backgroundColor = '#4CAF50';
            }
            fill.style.width = pct + '%';
            if (pct < 100) label.textContent = Math.floor(pct) + '%';
        }, 120);
    };

});
