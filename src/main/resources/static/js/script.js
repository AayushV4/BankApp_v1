"use strict";
const btnsOpenModel = document.querySelectorAll(".btn--open-modal"),
  btnCloseModal = document.querySelector(".btn--close-modal"),
  modal = document.querySelector(".modal"),
  overlay = document.querySelector(".overlay"),
  nav = document.querySelector(".nav"),
  openModal = function (e) {
    e.preventDefault(),
      modal.classList.remove("hidden"),
      overlay.classList.remove("hidden");
  },
  closeModal = function (e) {
    modal.classList.add("hidden"), overlay.classList.add("hidden");
  };
btnsOpenModel.forEach((btn) => btn.addEventListener("click", openModal)),
  btnCloseModal.addEventListener("click", closeModal),
  overlay.addEventListener("click", closeModal),
  document.addEventListener("keydown", function (e) {
    "Escape" !== e.key || modal.classList.contains("hidden") || closeModal();
  }),
  (document.querySelector(".nav__logo").style.height = "45px");
const btnScrollTo = document.querySelector(".btn--scroll-to"),
  section1 = document.querySelector("#section--1");
btnScrollTo.addEventListener("click", function (e) {
  const s1Coordinates = section1.getBoundingClientRect();
  console.log(s1Coordinates),
    console.log(e.target.getBoundingClientRect()),
    console.log(
      "Current scroll position (X/Y):",
      window.pageXOffset,
      window.pageYOffset
    ),
    console.log(
      "Height/width of viewport",
      document.documentElement.clientHeight,
      document.documentElement.clientWidth
    ),
    section1.scrollIntoView({ behavior: "smooth" });
});
const allLinks = document.querySelectorAll(".nav__link");
document.querySelector(".nav__links").addEventListener("click", function (e) {
  if ((e.preventDefault(), e.target.classList.contains("nav__link"))) {
    const id = e.target.getAttribute("href");
    "#" !== id &&
      document.querySelector(id).scrollIntoView({ behavior: "smooth" });
  }
});
const tabs = document.querySelectorAll(".operations__tab"),
  tabsContent = document.querySelectorAll(".operations__content"),
  tabsContainer = document.querySelector(".operations__tab-container");
tabsContainer.addEventListener("click", (e) => {
  const clicked = e.target.closest(".operations__tab");
  console.log(clicked),
    clicked &&
    (tabs.forEach((t) => t.classList.remove("operations__tab--active")),
      tabsContent.forEach((c) =>
        c.classList.remove("operations__content--active")
      ),
      clicked.classList.add("operations__tab--active"),
      document
        .querySelector(`.operations__content--${clicked.dataset.tab}`)
        .classList.add("operations__content--active"));
});
const handleHover = function (e) {
  if (e.target.classList.contains("nav__link")) {
    const link = e.target,
      siblings = link.closest(".nav").querySelectorAll(".nav__link"),
      logo = link.closest(".nav").querySelector("img");
    siblings.forEach((el) => {
      el !== link && (el.style.opacity = this);
    }),
      (logo.style.opacity = this);
  }
};
nav.addEventListener("mouseover", handleHover.bind(0.5)),
  nav.addEventListener("mouseout", handleHover.bind(1));
const obsCallback = function (entries, observer) {
  entries.forEach((entry) => {
    console.log(entry);
  });
},
  obsOptions = { root: null, threshold: [0, 0.2] },
  observer = new IntersectionObserver(obsCallback, obsOptions),
  navHeight = nav.getBoundingClientRect().height;
console.log(navHeight);
const stickNav = function (entries) {
  const [entry] = entries;
  entry.isIntersecting
    ? nav.classList.remove("sticky")
    : nav.classList.add("sticky");
},
  headerObserver = new IntersectionObserver(stickNav, {
    root: null,
    threshold: 0,
    rootMargin: `-${navHeight}px`,
  });
headerObserver.observe(document.querySelector(".header"));
const allSections = document.querySelectorAll(".section"),
  revealSection = (entries, observer) => {
    const [entry] = entries;
    entry.isIntersecting &&
      (entry.target.classList.remove("section--hidden"),
        observer.unobserve(entry.target));
  },
  rowObserver = new IntersectionObserver(revealSection, {
    root: null,
    threshold: 0.17,
  });
allSections.forEach((row) => {
  rowObserver.observe(row), row.classList.add("section--hidden");
});
const imgTargets = document.querySelectorAll("img[data-src]"),
  loadImg = (entries, observer) => {
    entries.forEach((entry) => {
      entry.isIntersecting &&
        ((entry.target.src = entry.target.dataset.src),
          entry.target.addEventListener("load", function () {
            this.classList.remove("lazy-img");
          }),
          observer.unobserve(entry.target));
    });
  },
  imgObserver = new IntersectionObserver(loadImg, {
    root: null,
    threshold: 0,
    rootMargin: "0px 0px -200px 0px",
  });
imgTargets.forEach((img) => {
  imgObserver.observe(img);
});
const slides = document.querySelectorAll(".slide"),
  btnLeft = document.querySelector(".slider__btn--left"),
  btnRight = document.querySelector(".slider__btn--right"),
  dotContainer = document.querySelector(".dots");
let curSlide = 0;
const maxSlide = slides.length,
  createDots = () => {
    slides.forEach((s, i) => {
      dotContainer.insertAdjacentHTML(
        "beforeend",
        `<button class="dots__dot" data-slide="${i}"></button>`
      );
    });
  },
  activateDot = (dot) => {
    document
      .querySelectorAll(".dots__dot")
      .forEach((d) => d.classList.remove("dots__dot--active")),
      document
        .querySelector(`.dots__dot[data-slide="${dot}"]`)
        .classList.add("dots__dot--active");
  },
  goToSlide = (slide) => {
    slides.forEach(
      (s, i) => (s.style.transform = `translateX(${100 * (i - slide)}%)`)
    );
  },
  prevSlide = () => {
    0 === curSlide ? (curSlide = maxSlide - 1) : curSlide--,
      goToSlide(curSlide),
      activateDot(curSlide);
  },
  nextSlide = () => {
    curSlide === maxSlide - 1 ? (curSlide = 0) : curSlide++,
      goToSlide(curSlide),
      activateDot(curSlide);
  };
btnLeft.addEventListener("click", prevSlide),
  btnRight.addEventListener("click", nextSlide),
  document.addEventListener("keydown", (e) => {
    "ArrowLeft" === e.key && prevSlide(), "ArrowRight" === e.key && nextSlide();
  }),
  dotContainer.addEventListener("click", (e) => {
    if ((console.log(e.target), e.target.matches(".dots__dot"))) {
      const { slide: slide } = e.target.dataset;
      goToSlide(slide), activateDot(slide);
    }
  });
const init = () => {
  goToSlide(0),
    slides.forEach((s, i) => {
      dotContainer.insertAdjacentHTML(
        "beforeend",
        `<button class="dots__dot" data-slide="${i}"></button>`
      );
    }),
    activateDot(0);
};
goToSlide(0),
  slides.forEach((s, i) => {
    dotContainer.insertAdjacentHTML(
      "beforeend",
      `<button class="dots__dot" data-slide="${i}"></button>`
    );
  }),
  activateDot(0),
  document.addEventListener("DOMContentLoaded", function (e) {
    console.log("HTML parsed and DOM tree built!", e);
  }),
  window.addEventListener("load", function (e) {
    console.log("Page fully loaded, including images!", e);
  }),
  window.addEventListener("beforeunload", function (e) {
    e.preventDefault(), console.log(e);
  });

