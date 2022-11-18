const Config = {
    name: "arega",
    scale: 1,
    Links: [
        [
            "resources",
            [
                ["github", "https://github.com/arega24/"],
                ["gmail", "https://mail.google.com/mail/u/0/#inbox"],
                ["protonmail", "https://account.proton.me/login?language=en"]
            ]
        ],
        [
            "ipl",
            [
                ["moodle", "https://ead.ipleiria.pt/2022-23/login/index.php"],
                ["horarios", "https://publico.agcp.ipleiria.pt/Paginas/ScheduleRptCursosSemanalPublico.aspx"],
                ["email", "https://login.ipleiria.pt/adfs/ls/?login_hint=2201665%40my.ipleiria.pt&client-request-id=f4b73a7e-b314-0f09-c577-ac78c13e5fdc&username=2201665%40my.ipleiria.pt&wa=wsignin1.0&wtrealm=urn%3afederation%3aMicrosoftOnline&wctx=estsredirect%3d2%26estsrequest%3drQQIARAA02I21DO0UjGAACNdEKlrkJZmqJucCmIhgSIhLoE6q-1fRDZz8h8tX1Nx0C7-zipGpYySkoJiK339_NKSnPz8bL38tLTM5FRjM1O95Pxc_fzyRP0djIwXGBlfMDJOYhIzMjIwNDMzdcit1MssyEnNLMpM1CsoWcVkbmZsbm5pbm5qYWphbGxibGxqrGecmJKWlGqUqGtuYZKqa2JhYaxrmZKcqGuSmGxhkZyaYm5ianmLid_fsbQkwwhE5BdlVqV-YuJMyy_KjS_ILy6ZxRzvklxc4ZrvWO7sGBaUX-pX4etpkpbhVO6RbZmRmJpnUGCcF5WU6Z7hF1xZ4JFRWukcHuIXElae7BrqX-lpkVJV5eKSGFGZ6umfVOjrEWwcYhyQn-pVUuBTFlZiUWaWbrGKmaiw28TMBgyN3Py8U8xs-QWpeZkpF1gYH7AwvmLhMWC24uDgEmCQYFBg-MHCuIgVGMya826fDDi2yHPBrHrBrOgkhlOs-pF-eWG5xiFG4XnJ3r4GxmZhQWXGmSXF3nmppeFVHtrlLgWlJcEWLhHejsW2plaGE9gYJ7Cx7WLj5GAWYFBidg4wfMHG-IGNsYOdYRcnEXF2gZvxAC_DD77jczbvfLX11xsPAA2&RedirectToIdentityProvider=http%3a%2f%2flogin.ipleiria.pt%2fadfs%2fservices%2ftrust"]
            ]
        ],
        [
            "web-resources",
            [
                ["sympy", "https://gamma.sympy.org/"],
                ["stackexchange", "https://stackexchange.com/"],
                ["sciencedirect", "https://www.sciencedirect.com/"],
            ]
        ],
        [
            "news",
            [
                ["weforum", "https://www.weforum.org/"],
                ["apnews", "https://apnews.com/"],
                ["reuters", "https://www.reuters.com/"],
                ["dailystormer", "https://dailystormer.in/"],
                ["opensource", "https://blog.opensource.org/"],
                ["hackerone", "https://www.hackerone.com/vulnerability-and-security-testing-blog"],
                ["b1m", "https://www.theb1m.com/"]
            ]
        ],
        [
            "entertainement",
            [
                ["invidious", "https://invidious.tiekoetter.com/feed/popular"],
                ["libreddit", "https://libreddit.tiekoetter.com/"],
                ["nitter", "https://nitter.tiekoetter.com/"],
                ["lichess", "https://lichess.org/"]
            ]
        ],
        [
            "utensils",
            [
                ["snapdrop", "https://snapdrop.net/"],
                ["tradingview", "https://www.tradingview.com/"],
                ["openstreetmap", "https://www.openstreetmap.org/"],
                ["tiekoetter", "https://www.tiekoetter.com/en/services/"],
                ["simplytranslate", "https://translate.tiekoetter.com/"]
            ]
        ]
    ]
}

const Main = (() => {
    const list = document.getElementById("list");
    const names = document.querySelectorAll("[data-Name]");
    const search = document.getElementById("search");
    const form = document.forms[0];

    const init = () => {
        list.innerHTML = Config.Links.map(([gName, Links]) => `
            <li>
                <h1 onclick="this.parentNode.classList.toggle('hideChildren')">${gName}</h1>
                <ul>
                    ${Links.map(([lName, url]) => `
                        <li>
                            <a href="${url}">${lName}</a>
                        </li>`
                    ).join("")}
                </ul>
            </li>` 
        ).join("")
        
        names.forEach(el => {
            el.innerText = Config.name;
        });

        document.addEventListener("keydown", e => e.key.length === 1 && search.focus());
        search.addEventListener("keydown", () => (window.event ? event.keyCode : e.which) == 13 && form.submit());
    };

    return {
        init,
    };
})();

Main.init()
