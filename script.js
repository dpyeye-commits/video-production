// Global panel navigation function
window.goPanel = (panelNum) => {
    // Hide all panels
    const panels = document.querySelectorAll('.panel');
    panels.forEach(panel => {
        panel.classList.remove('active');
    });

    // Show the targeted panel
    const targetPanel = document.getElementById(`panel-${panelNum}`);
    if (targetPanel) {
        targetPanel.classList.add('active');
        // Smooth scroll to top of the panel if needed
        const scrollContainer = targetPanel.querySelector('.p-scroll');
        if (scrollContainer) scrollContainer.scrollTop = 0;
    }
};

document.addEventListener('DOMContentLoaded', () => {
    // 1. Title Glitch & Typewriter Effect
    const titleElement = document.querySelector('.p1-title'); // Fixed selector
    if (titleElement) {
        const text = titleElement.textContent;
        titleElement.textContent = '';
        
        let i = 0;
        const typeWriter = setInterval(() => {
            if (i < text.length) {
                titleElement.textContent += text.charAt(i);
                i++;
            } else {
                clearInterval(typeWriter);
                titleElement.classList.add('glitch-active');
                
                // Random glitch effect trigger
                setInterval(() => {
                    if(Math.random() > 0.8) {
                        titleElement.style.textShadow = `
                            ${Math.random() * 4 - 2}px ${Math.random() * 4 - 2}px 0 rgba(255, 0, 0, 0.8),
                            ${Math.random() * -4 + 2}px ${Math.random() * -4 + 2}px 0 rgba(0, 255, 255, 0.8)
                        `;
                        setTimeout(() => {
                            titleElement.style.textShadow = 'none';
                        }, 50);
                    }
                }, 2000);
            }
        }, 100);
    }

    // 2. Button Hover & Click Interactions
    const startBtn = document.querySelector('.start-btn');
    const cornerTL = document.querySelector('.btn-corner-tl');
    const cornerBR = document.querySelector('.btn-corner-br');

    if (startBtn) {
        startBtn.addEventListener('mouseenter', () => {
            if (cornerTL) cornerTL.style.transform = 'translate(-4px, -4px)';
            if (cornerBR) cornerBR.style.transform = 'translate(4px, 4px)';
            startBtn.style.boxShadow = '0 0 20px rgba(255, 214, 0, 0.4)';
        });

        startBtn.addEventListener('mouseleave', () => {
            if (cornerTL) cornerTL.style.transform = 'translate(0, 0)';
            if (cornerBR) cornerBR.style.transform = 'translate(0, 0)';
            startBtn.style.boxShadow = 'none';
        });

        // Click logic for the start button
        startBtn.addEventListener('click', (e) => {
            // Index.html has onclick="goPanel(2)", but we can add cinematic delay here
            e.preventDefault();
            startBtn.style.transform = 'scale(0.95)';
            setTimeout(() => {
                startBtn.style.transform = 'scale(1)';
                goPanel(2);
            }, 300);
        });
    }

    // 3. Subtle Parallax on Mouse Move
    const appContainer = document.querySelector('.app-container');
    if (appContainer) {
        document.addEventListener('mousemove', (e) => {
            const x = (e.clientX / window.innerWidth - 0.5) * 10;
            const y = (e.clientY / window.innerHeight - 0.5) * 10;
            appContainer.style.backgroundPosition = `calc(50% + ${x}px) calc(50% + ${y}px)`;
        });
    }
});

// Dummy functions for the UI buttons
window.handleSignup = () => alert('회원가입 프로토콜이 시작되었습니다.');
window.googleLogin = () => alert('Google 인증 서버에 연결 중...');
window.appleLogin = () => alert('Apple 인증 서버에 연결 중...');
window.startRender = () => {
    const progress = document.getElementById('render-progress');
    const fill = document.getElementById('progress-fill');
    const label = document.getElementById('progress-label');
    const btn = document.getElementById('render-btn');

    if (progress && fill && label && btn) {
        progress.classList.remove('hidden');
        btn.disabled = true;
        let p = 0;
        const interval = setInterval(() => {
            p += Math.random() * 5;
            if (p >= 100) {
                p = 100;
                clearInterval(interval);
                label.textContent = 'RENDER COMPLETE';
                alert('영상이 성공적으로 렌더링되었습니다!');
                btn.disabled = false;
            } else {
                label.textContent = Math.floor(p) + '%';
                fill.style.width = p + '%';
            }
        }, 100);
    }
};
