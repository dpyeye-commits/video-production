document.addEventListener('DOMContentLoaded', () => {
    // 1. Title Glitch & Typewriter Effect
    const titleElement = document.querySelector('.main-title');
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

    // 2. Button Hover Interactive Expansion
    const btnContainer = document.querySelector('.btn-container');
    const startBtn = document.querySelector('.start-btn');
    const cornerTL = document.querySelector('.btn-corner-tl');
    const cornerBR = document.querySelector('.btn-corner-br');

    startBtn.addEventListener('mouseenter', () => {
        cornerTL.style.transform = 'translate(-4px, -4px)';
        cornerBR.style.transform = 'translate(4px, 4px)';
        startBtn.style.boxShadow = '0 0 20px rgba(255, 214, 0, 0.4)';
    });

    startBtn.addEventListener('mouseleave', () => {
        cornerTL.style.transform = 'translate(0, 0)';
        cornerBR.style.transform = 'translate(0, 0)';
        startBtn.style.boxShadow = 'none';
    });

    // 3. Subtle Parallax on Mouse Move
    const appContainer = document.querySelector('.app-container');
    document.addEventListener('mousemove', (e) => {
        const x = (e.clientX / window.innerWidth - 0.5) * 10;
        const y = (e.clientY / window.innerHeight - 0.5) * 10;
        // Move the background slightly based on mouse position
        appContainer.style.backgroundPosition = `calc(50% + ${x}px) calc(50% + ${y}px)`;
    });
});
