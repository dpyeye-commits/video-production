document.addEventListener('DOMContentLoaded', () => {

    /* ── Panel Navigation ── */
    let currentPanel = 1;

    window.goPanel = function(num) {
        if (num === currentPanel) return;
        const prev = document.getElementById(`panel-${currentPanel}`);
        const next = document.getElementById(`panel-${num}`);
        if (!next) return;

        prev.classList.add('exit');
        setTimeout(() => prev.classList.remove('active', 'exit'), 350);
        next.classList.add('active');
        currentPanel = num;
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

    /* ── Card Toggles ── */
    ['mood-grid', 'lut-grid'].forEach(cls => {
        document.querySelectorAll(`.${cls}`).forEach(grid => {
            grid.querySelectorAll('[class*="-card"]').forEach(card => {
                card.addEventListener('click', () => {
                    grid.querySelectorAll('[class*="-card"]').forEach(c => c.classList.remove('active'));
                    card.classList.add('active');
                });
            });
        });
    });

    /* ── Color Sliders Live ── */
    document.querySelectorAll('.cc-row').forEach(row => {
        const slider = row.querySelector('.cc-slider');
        const val = row.querySelector('.cc-val');
        if (!slider || !val) return;
        slider.addEventListener('input', () => {
            const label = row.querySelector('.cc-label')?.textContent || '';
            val.textContent = label.includes('색온도') ? slider.value + 'K' : slider.value;
        });
    });

    /* ── Signup ── */
    window.handleSignup = function() {
        const email = document.getElementById('email-input').value.trim();
        const pw = document.getElementById('pw-input').value;
        if (!email || !pw) {
            alert('이메일과 비밀번호를 입력하세요.');
            return;
        }
        goPanel(3);
    };

    /* ── Google Login ── */
    window.googleLogin = function() {
        // Google OAuth 2.0 implicit flow
        // Client ID를 Google Cloud Console에서 발급 후 교체하세요
        const clientId = 'YOUR_GOOGLE_CLIENT_ID';
        const redirectUri = encodeURIComponent(window.location.href.split('?')[0]);
        const scope = encodeURIComponent('email profile');
        const url = `https://accounts.google.com/o/oauth2/v2/auth?client_id=${clientId}&redirect_uri=${redirectUri}&response_type=token&scope=${scope}`;

        if (clientId === 'YOUR_GOOGLE_CLIENT_ID') {
            alert('Google 로그인을 사용하려면 Google Cloud Console에서 OAuth 클라이언트 ID를 발급받아 script.js의 YOUR_GOOGLE_CLIENT_ID를 교체하세요.');
            return;
        }
        window.location.href = url;
    };

    /* ── Apple Login ── */
    window.appleLogin = function() {
        alert('Apple 로그인은 Apple Developer 계정이 필요합니다.');
    };

    /* ── Handle OAuth Callback ── */
    const hash = window.location.hash;
    if (hash.includes('access_token')) {
        const params = new URLSearchParams(hash.substring(1));
        const token = params.get('access_token');
        if (token) {
            // Fetch user info
            fetch('https://www.googleapis.com/oauth2/v3/userinfo', {
                headers: { Authorization: `Bearer ${token}` }
            })
            .then(r => r.json())
            .then(user => {
                console.log('Google user:', user);
                goPanel(3);
            });
        }
    }

    /* ── Render Simulation ── */
    window.startRender = function() {
        const btn = document.getElementById('render-btn');
        const progress = document.getElementById('render-progress');
        const fill = document.getElementById('progress-fill');
        const label = document.getElementById('progress-label');

        btn.disabled = true;
        btn.innerHTML = '렌더링 중...';
        progress.classList.remove('hidden');

        let pct = 0;
        const iv = setInterval(() => {
            pct += Math.random() * 3.5 + 0.5;
            if (pct >= 100) {
                pct = 100;
                clearInterval(iv);
                label.textContent = '완료!';
                btn.innerHTML = '✓ 렌더 완료';
                btn.style.background = '#4CAF50';
            }
            fill.style.width = pct + '%';
            if (pct < 100) label.textContent = Math.floor(pct) + '%';
        }, 100);
    };

});
