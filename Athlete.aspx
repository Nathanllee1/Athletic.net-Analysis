<!DOCTYPE html>
<html id="html" lang="en" xmlns="http://www.w3.org/1999/xhtml" class="TF">

<head id="Head1">
    <base href="/TrackAndField/" />
    <script type='text/javascript'>
        var googletag = googletag || {};
        googletag.cmd = googletag.cmd || [];

        var pbjs = pbjs || {};
        pbjs.que = pbjs.que || [];
    </script>

    <script>
        var PREBID_TIMEOUT = 2000;
        var FAILSAFE_TIMEOUT = 3000;

        googletag.cmd.push(function() {
            googletag.pubads().disableInitialLoad();
        });

        var prebid_bidders_720 = [{
            bidder: 'appnexus',
            params: {
                placementId: '12769519',
                reserve: 0.90
            },
            labelAny: ['phone']
        }, {
            bidder: 'appnexus',
            params: {
                placementId: '12769520',
                reserve: 0.90
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'conversant',
            params: {
                site_id: '116164',
                bidfloor: 0.10,
                secure: 1
            }
        }, {
            bidder: 'criteo',
            params: {
                zoneId: 1144130
            },
            labelAny: ['phone']
        }, {
            bidder: 'criteo',
            params: {
                zoneId: 1143004
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'rubicon',
            params: {
                accountId: '18102',
                siteId: '188796',
                zoneId: '919942',
                floor: 0.10
            }
        }, {
            bidder: 'gumgum',
            params: {
                inSlot: 7161
            },
            labelAny: ['phone']
        }, {
            bidder: 'gumgum',
            params: {
                inSlot: 7162
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'sovrn',
            params: {
                tagid: '539836',
                reserve: 0.90
            },
            labelAny: ['phone']
        }, {
            bidder: 'sovrn',
            params: {
                tagid: '539833',
                reserve: 0.90
            },
            labelAny: ['display', 'tablet']
        }];
        var prebid_bidders_320_300Box = [{
            bidder: 'appnexus',
            params: {
                placementId: '12769519',
                reserve: 0.90
            },
            labelAny: ['phone']
        }, {
            bidder: 'appnexus',
            params: {
                placementId: '12769518',
                reserve: 0.90
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'conversant',
            params: {
                site_id: '116164',
                bidfloor: 0.10,
                secure: 1
            }
        }, {
            bidder: 'criteo',
            params: {
                zoneId: 1144130
            },
            labelAny: ['phone']
        }, {
            bidder: 'criteo',
            params: {
                zoneId: 1143002
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'rubicon',
            params: {
                accountId: '18102',
                siteId: '188796',
                zoneId: '919942',
                floor: 0.10
            }
        }, {
            bidder: 'gumgum',
            params: {
                inSlot: 7161
            },
            labelAny: ['phone']
        }, {
            bidder: 'gumgum',
            params: {
                inSlot: 7160
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'sovrn',
            params: {
                tagid: '539836',
                reserve: 0.90
            },
            labelAny: ['phone']
        }, {
            bidder: 'sovrn',
            params: {
                tagid: '539834',
                reserve: 0.90
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'teads',
            params: {
                placementId: 99443,
                pageId: 91758
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'teads',
            params: {
                placementId: 100743,
                pageId: 92989
            },
            labelAny: ['phone']
        }];
        var prebid_bidders_300Box = [{
            bidder: 'appnexus',
            params: {
                placementId: '12769518',
                reserve: 0.90
            }
        }, {
            bidder: 'conversant',
            params: {
                site_id: '116164',
                bidfloor: 0.10,
                secure: 1
            }
        }, {
            bidder: 'criteo',
            params: {
                zoneId: 1143002
            }
        }, {
            bidder: 'rubicon',
            params: {
                accountId: '18102',
                siteId: '188796',
                zoneId: '919942',
                floor: 0.10
            }
        }, {
            bidder: 'gumgum',
            params: {
                inSlot: 7160
            }
        }, {
            bidder: 'sovrn',
            params: {
                tagid: '539834',
                reserve: 0.90
            }
        }, {
            bidder: 'teads',
            params: {
                placementId: 99443,
                pageId: 91758
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'teads',
            params: {
                placementId: 100743,
                pageId: 92989
            },
            labelAny: ['phone']
        }];
        var prebid_bidders_outstream640 = [{
            bidder: 'appnexus',
            params: {
                placementId: 13979005,
                allowSmallerSizes: true,
                reserve: 1.00
            },
            labelAny: ['display', 'tablet']
        }, {
            bidder: 'teads',
            params: {
                placementId: 100744,
                pageId: 92990
            }
        }];
        var prebid_bidders_outstream320 = [{
            bidder: 'appnexus',
            params: {
                placementId: 14089865,
                reserve: 1.00
            },
            labelAny: ['phone']
        }];
        var prebid_sizes_banner = [
            [970, 90],
            [728, 90],
            [320, 50]
        ];
        var prebid_sizes_300Box = [
            [300, 250]
        ];
        var prebid_sizes_colapsingBox = [
            [300, 250],
            [320, 50]
        ];

        pbjs.que.push(function() {
            pbjs.setConfig({
                // enableSendAllBids: true,
                priceGranularity: {
                    'buckets': [{
                        'min': 0,
                        'max': 3,
                        'increment': 0.10
                    }, {
                        'min': 3,
                        'max': 8,
                        'increment': 0.25
                    }, {
                        'min': 8,
                        'max': 20,
                        'increment': 1
                    }]
                },
                sizeConfig: [{
                    mediaQuery: '(min-width: 1200px)',
                    sizesSupported: [
                        [970, 90],
                        [728, 90],
                        [300, 250],
                        [640, 480],
                        [320, 240],
                        [1, 1]
                    ],
                    labels: ['display']
                }, {
                    mediaQuery: '(min-width: 768px) and (max-width: 1199px)',
                    sizesSupported: [
                        [728, 90],
                        [468, 60],
                        [300, 250],
                        [320, 50],
                        [300, 50],
                        [640, 480],
                        [320, 240],
                        [1, 1]
                    ],
                    labels: ['tablet']
                }, {
                    mediaQuery: '(min-width: 0px) and (max-width: 767px)',
                    sizesSupported: [
                        [480, 80],
                        [468, 60],
                        [300, 250],
                        [320, 50],
                        [300, 50],
                        [120, 20],
                        [168, 28],
                        [640, 480],
                        [320, 240],
                        [1, 1]
                    ],
                    labels: ['phone']
                }]
            });
            pbjs.addAdUnits([{
                code: 'ad_ATF_Banner',
                mediaTypes: {
                    banner: {
                        sizes: prebid_sizes_banner
                    }
                },
                bids: prebid_bidders_720
            }, {
                code: 'ad_InPage_Box',
                mediaTypes: {
                    banner: {
                        sizes: prebid_sizes_300Box
                    }
                },
                bids: prebid_bidders_300Box
            }, {
                code: 'ad_InPage_320',
                mediaTypes: {
                    banner: {
                        sizes: prebid_sizes_colapsingBox
                    }
                },
                bids: prebid_bidders_320_300Box
            }, {
                code: 'ad_BTF_Banner',
                mediaTypes: {
                    banner: {
                        sizes: prebid_sizes_banner
                    }
                },
                bids: prebid_bidders_720
            }, {
                code: 'ad_video1x1',
                mediaTypes: {
                    video: {
                        context: 'outstream',
                        playerSize: [640, 480]
                    }
                },
                bids: prebid_bidders_outstream640
            }, {
                code: 'ad_video1x1',
                mediaTypes: {
                    video: {
                        context: 'outstream',
                        playerSize: [320, 240]
                    }
                },
                bids: prebid_bidders_outstream320
            }]);
            pbjs.requestBids({
                bidsBackHandler: initAdserver,
                timeout: PREBID_TIMEOUT
            });
        });

        function initAdserver(data) {
            if (pbjs.initAdserverSet) return;
            pbjs.initAdserverSet = true;
            googletag.cmd.push(function() {
                pbjs.que.push(function() {
                    pbjs.setTargetingForGPTAsync();
                    googletag.pubads().refresh();
                    // console.log('sendAdserverRequest:', data);console.log('BidResponses',pbjs.getBidResponses());console.log('AdserverTargeting',pbjs.getAdserverTargeting());
                });
            });
        }

        setTimeout(function() { // in case PBJS doesn't load
            if (!pbjs.initAdserverSet) gtag('event', 'FAILSAFE_TIMEOUT', {
                event_category: 'Prebid.js FAILSAFE_TIMEOUT',
                event_label: 'TimeOut',
                value: 1,
                non_interaction: true
            });
            initAdserver('timeout');
        }, FAILSAFE_TIMEOUT);
    </script>

    <script src="https://stage.athletic.net/Shared/scripts/prebid/prebid2.16.0.js" async></script>

    <script type='text/javascript'>
        googletag.cmd.push(function() {
            var bannerMapping = googletag.sizeMapping().addSize([100, 100], [88, 31]).addSize([320, 400], [
                [320, 50],
                [300, 50]
            ]).addSize([768, 200], [
                [320, 50],
                [468, 60],
                [728, 90]
            ]).addSize([1050, 200], [
                [320, 50],
                [468, 60],
                [728, 90],
                [970, 90],
                [1024, 120]
            ]).build();
            var boxMapping = googletag.sizeMapping().addSize([100, 100], [88, 31]).addSize([320, 320], [
                [320, 50],
                [350, 400],
                [300, 50]
            ]).addSize([900, 550], [
                [300, 250]
            ]).build();
            //var skyscraperMapping = googletag.sizeMapping().addSize([0, 0], []).addSize([700, 630], [160, 600]).build();
            var takeoverMapping = googletag.sizeMapping().addSize([0, 0], []).addSize([1200, 500], [1, 1]).build();
            var pixleMapping = googletag.sizeMapping().addSize([320, 320], [1, 1]).build();
            googletag.defineSlot('/1011615/Responsive//ATF_Banner', [728, 90], 'ad_ATF_Banner').defineSizeMapping(bannerMapping).addService(googletag.pubads());
            googletag.defineSlot('/1011615/Responsive//InPage_Box', [300, 250], 'ad_InPage_Box').addService(googletag.pubads());
            googletag.defineSlot('/1011615/Responsive//InPage_320', [300, 250], 'ad_InPage_320').defineSizeMapping(boxMapping).addService(googletag.pubads());
            googletag.defineSlot('/1011615/Responsive//BTF_Banner', [728, 90], 'ad_BTF_Banner').defineSizeMapping(bannerMapping).addService(googletag.pubads());
            googletag.defineSlot('/1011615/bg_takeover', [1, 1], 'bgTakeover').defineSizeMapping(takeoverMapping).addService(googletag.pubads());
            googletag.defineSlot('/1011615/video1x1', [1, 1], 'ad_video1x1').defineSizeMapping(pixleMapping).addService(googletag.pubads());
            googletag.defineSlot('/1011615/bottom1x1', [1, 1], 'ad_bottom1x1').defineSizeMapping(pixleMapping).addService(googletag.pubads());
            googletag.pubads().setTargeting('Page', 'AthleteProfile');
            googletag.pubads().setTargeting('Section', 'TF');
            googletag.pubads().setTargeting('SSupport', '0');
            googletag.pubads().setTargeting('UserRole', 'General');
            googletag.pubads().setTargeting('Tag', 'notag');

            googletag.pubads().enableSingleRequest();
            googletag.enableServices();
        });
    </script>

    <!-- Quantcast Tag, part 1 - part 2 in footer-->
    <script type="text/javascript">
        var _qevents = _qevents || [];
        (function() {
            var a = document.createElement("script");
            a.src = ("https:" == document.location.protocol ? "https://secure" : "http://edge") + ".quantserve.com/quant.js";
            a.async = !0;
            a.type = "text/javascript";
            var b = document.getElementsByTagName("script")[0];
            b.parentNode.insertBefore(a, b)
        })();
    </script>

    <title>
        Nathan Lee - CA Track and Field Bio
    </title>
    <meta name="application-name" content="Athletic.net" />
    <link rel="icon" type="image/x-icon" href="/favicon.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta property="fb:app_id" content="169507956425670" />
    <meta property="og:site_name" content="Athletic.net" />
    <meta property="og:url" content='https://www.athletic.net/TrackAndField/Athlete.aspx?AID=8647967' />
    <meta name="twitter:site" content="@AthleticNet" />
    <link id="Link1" rel="search" type="application/opensearchdescription+xml" href="../opensearch.xml" title="Athletic.net Search" />

    <script type="text/javascript">
        var anetBSVersion = 'Bootstrap4Transition';
    </script>
    <link href="https://stage.athletic.net/css/Bootstrap4Transition-v-EN6P7OVJwvyHkLsnDeYjMoBaPHr6gw08OmJgxnR3Mg1" rel="stylesheet" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-Bx4pytHkyTDy3aJKjGkGoHPt3tvv6zlwwjc3iqN7ktaiEMLDPqLSZYts2OjKcBx1" crossorigin="anonymous" />
    <link rel="canonical" href="https://www.athletic.net/TrackAndField/Athlete.aspx?AID=8647967" />
    <meta name="favTitle" content="TF-Nathan Lee" />
    <meta name="description" content="Nathan Lee - CA Track &amp; Field results and photos on Athletic.net" />

    <meta property="og:title" content="Nathan Lee" />
    <meta property="og:type" content="athlete" />
    <meta property="og:image" content="https://www.athletic.net/images/Logo/AthleticNet-OG-Image_1200x630.jpg" />
    <meta property="og:url" content="https://www.athletic.net/TrackAndField/Athlete.aspx?AID=8647967" />
    <meta property="og:site_name" content="Athletic.net" />
    <meta property="fb:admins" content="DavidBowdoin,joshua.bowdoin" />
    <meta property="fb:page_id" content="25581885951" />
    <meta property="fb:app_id" content="7060951934" />

    <script type="text/javascript">
        if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
            var msViewportStyle = document.createElement('style')
            msViewportStyle.appendChild(
                document.createTextNode(
                    '@-ms-viewport{width:auto!important}'
                )
            )
            document.querySelector('head').appendChild(msViewportStyle)
        }
    </script>
    <!-- End Fix for Bootstrap-->

    <script type="text/javascript">
        var anetSiteAppParams = {
            "app": "net",
            "isProduction": true,
            "siteVersion": "1.1.7084.17525",
            "tree": [{
                "type": "sport",
                "id": "tf",
                "title": "Track & Field",
                "url": "/TrackAndField/"
            }, {
                "type": "div",
                "id": 97967,
                "title": "High School",
                "url": "/TrackAndField/Division/Top.aspx?DivID=97967",
                "HomePage": "./",
                "BaseDivID": 79
            }, {
                "type": "div",
                "id": 98249,
                "title": "United States",
                "url": "/TrackAndField/Division/Top.aspx?DivID=98249",
                "HomePage": "",
                "BaseDivID": 2
            }, {
                "type": "div",
                "id": 98381,
                "title": "California",
                "url": "/TrackAndField/Division/Top.aspx?DivID=98381",
                "HomePage": "California/",
                "BaseDivID": 278
            }, {
                "type": "div",
                "id": 98484,
                "title": "Oakland",
                "url": "/TrackAndField/Division/Top.aspx?DivID=98484",
                "HomePage": "California/Oakland.aspx",
                "BaseDivID": 496
            }, {
                "type": "div",
                "id": 98486,
                "title": "Oakland Athletic League",
                "url": "/TrackAndField/Division/Top.aspx?DivID=98486",
                "HomePage": "",
                "BaseDivID": 5667
            }, {
                "type": "team",
                "id": 1973,
                "title": "Oakland Tech",
                "url": "/TrackAndField/School.aspx?SchoolID=1973"
            }, {
                "type": "athlete",
                "id": 8647967,
                "title": "Nathan Lee",
                "url": "/TrackAndField/Athlete.aspx?AID=8647967"
            }]
        };
    </script>

    <script type="application/ld+json">{"@context":"http://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"Track & Field","item":"https://www.athletic.net/TrackAndField/"},{"@type":"ListItem","position":2,"name":"High School","item":"https://www.athletic.net/TrackAndField/Division/Top.aspx?DivID=97967"},{"@type":"ListItem","position":3,"name":"United States","item":"https://www.athletic.net/TrackAndField/Division/Top.aspx?DivID=98249"},{"@type":"ListItem","position":4,"name":"California","item":"https://www.athletic.net/TrackAndField/Division/Top.aspx?DivID=98381"},{"@type":"ListItem","position":5,"name":"Oakland","item":"https://www.athletic.net/TrackAndField/Division/Top.aspx?DivID=98484"},{"@type":"ListItem","position":6,"name":"Oakland Athletic League","item":"https://www.athletic.net/TrackAndField/Division/Top.aspx?DivID=98486"},{"@type":"ListItem","position":7,"name":"Oakland Tech","item":"https://www.athletic.net/TrackAndField/School.aspx?SchoolID=1973"}]}</script>
    <script src="https://stage.athletic.net/js/moment-v-4uBI_Vj5PSeJoMBRlWCjQjI0slTmm0L9XXBzYZhzUaY1"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" type="text/javascript"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js" crossorigin></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.11/lodash.min.js"></script>

    <script type='text/javascript'>
        (function() {
            var gads = document.createElement('script');
            gads.async = true;
            gads.type = 'text/javascript';
            var useSSL = 'https:' == document.location.protocol;
            gads.src = (useSSL ? 'https:' : 'http:') +
                '//www.googletagservices.com/tag/js/gpt.js';
            var node = document.getElementsByTagName('script')[0];
            node.parentNode.insertBefore(gads, node);
        })();
    </script>

    <link href="https://stage.athletic.net/css/AthleteProfile-v-NGQldNljqTU81LqgKIN8koDB0zT74RPpX9t74KMShWA1" rel="stylesheet" />

    <script src="https://stage.athletic.net/js/AthleteProfile1-v-pg0wwooy9cs62m3XqE9aVG_USSO9EHCrnjzcEWqHPo1"></script>

    <script src="https://stage.athletic.net/js/AthleteProfile-v-9diM7W1IzRqMKT6YTWjNgNUv1ZBJjYTrtRz4cmiBX2s1"></script>

    <script>
        angular.module('angularPartialsBundles', []);
        angular.module('athleteProfile')
            .constant('params', {
                "photoStyle": null,
                "athleteId": 8647967,
                "coach": false,
                "first": "Nathan",
                "last": "Lee",
                "teamId": 1973,
                "seasonId": 2019,
                "userId": 127340,
                "MembershipLevel": 0,
                "sport": "TF",
                "publicToken": "czimj7xkcpaqjj2gmp5d1w",
                "admin": false,
                "canEdit": false,
                "isAuthenticatedWithGoodStanding": true
            })
            .constant('initialData', {
                "photos": [],
                "tlogModuleData": {
                    "canViewLog": true,
                    "canModifyLog": true,
                    "canClaimAthlete": false,
                    "athleteIsClaimed": true,
                    "userIdOfOwner": 127340,
                    "usersWhoManage": [{
                        "Id": 127340,
                        "AthleteId": 8647967,
                        "FirstName": "Nathan",
                        "LastName": "Lee"
                    }],
                    "logIsActive": false,
                    "defaultUnit": "mi",
                    "athleteId": 8647967,
                    "athleteName": "Nathan Lee",
                    "workouts": [{
                        "Type": "TF",
                        "Name": "CIF Oakland Section Finals",
                        "Date": "2019-05-16T00:00:00",
                        "Meters": 3200,
                        "ApiId": null
                    }, {
                        "Type": "TF",
                        "Name": "Region Meet",
                        "Date": "2019-05-09T00:00:00",
                        "Meters": 1600,
                        "ApiId": null
                    }, {
                        "Type": "TF",
                        "Name": "Clash of the Titans",
                        "Date": "2019-04-27T00:00:00",
                        "Meters": 3200,
                        "ApiId": null
                    }, {
                        "Type": "TF",
                        "Name": "Region Meet",
                        "Date": "2019-04-24T00:00:00",
                        "Meters": 1600,
                        "ApiId": null
                    }, {
                        "Type": "TF",
                        "Name": "Granada Distance & Sprint Festival",
                        "Date": "2019-04-13T00:00:00",
                        "Meters": 3200,
                        "ApiId": null
                    }],
                    "claimToken": null
                }
            });
        var anetAngularJsApp = 'athleteProfile';
    </script>

    <script src="https://stage.athletic.net/partials/AthleteProfile-v-LjCn0bqn5baGFsKbGInrx7hcIILsbETcJb6wM5J2o1"></script>

    <script type="text/javascript" src="//script.crazyegg.com/pages/scripts/0006/9287.js" async="async"></script>
</head>

<body id="body">
    <anet-athletic-header></anet-athletic-header>

    <main id="anetMain" class="d-flex flex-column">

        <div class="ad-takeover visible-lg hidden-md-down d-none d-lg-block">
            <div class="container">
                <div id='bgTakeoverLeft'></div>
                <div id='bgTakeoverRight'></div>
            </div>
        </div>

        <div id="printHeader" style="display: none;">
            <img width="175" style="margin-bottom: 4px;" src="/images/Logo/Athletic_net_red.svg" />
            <span style="float: right; margin-top: 8px">Team Results Management</span>
        </div>

        <div ng-controller="TeamNavCtrl as teamNavC">
            <team-nav team-id="teamNavC.params.teamId" athlete-id="8647967" user-id="127340" sport="'tf'" season-id="2019" hide-switch-to="true" class="team-nav-min-height"></team-nav>
        </div>

        <div id="ad_ATF_Banner" class="Ad ATF Banner" aria-hidden="true">
            <script type='text/javascript'>
                googletag.cmd.push(function() {
                    googletag.display('ad_ATF_Banner');
                });
            </script>
        </div>

        <div id="ATF_Remove_Ads" class="small text-center hidden-print d-print-none" style="margin: -5px 0 5px;">
            <a href="/features/athletes" style="background: #ededed; border-radius: 2px; padding: 0 7px;">View Athletic.net Ad Free</a>
        </div>

        <div ng-controller="AppCtrl as appC" class="container ng-cloak">
            <script>
                angular.module('athleteProfile').constant('xsltData', {
                    seasons: [{
                        id: 2019,
                        name: '2019 Outdoor'
                    }, {
                        id: 2018,
                        name: '2018 Outdoor'
                    }, {
                        id: 2017,
                        name: '2017 Outdoor'
                    }, {
                        id: 2016,
                        name: '2016 Outdoor'
                    }, ],
                    grades: [{
                        id: 0,
                        name: 'Graduated'
                    }, {
                        id: 1,
                        name: 'MS - 1st Grade'
                    }, {
                        id: 2,
                        name: 'MS - 2nd Grade'
                    }, {
                        id: 3,
                        name: 'MS - 3rd Grade'
                    }, {
                        id: 4,
                        name: 'MS - 4th Grade'
                    }, {
                        id: 5,
                        name: 'MS - 5th Grade'
                    }, {
                        id: 6,
                        name: 'MS - 6th Grade'
                    }, {
                        id: 7,
                        name: 'MS - 7th Grade'
                    }, {
                        id: 8,
                        name: 'MS - 8th Grade'
                    }, {
                        id: 9,
                        name: 'HS - 9th Grade'
                    }, {
                        id: 10,
                        name: 'HS - 10th Grade'
                    }, {
                        id: 11,
                        name: 'HS - 11th Grade'
                    }, {
                        id: 12,
                        name: 'HS - 12th Grade'
                    }, {
                        id: 21,
                        name: 'College - Freshman'
                    }, {
                        id: 22,
                        name: 'College - Sophomores'
                    }, {
                        id: 23,
                        name: 'College - Juniors'
                    }, {
                        id: 24,
                        name: 'College - Seniors'
                    }, {
                        id: 98,
                        name: 'College - Redshirt'
                    }, {
                        id: 99,
                        name: '?'
                    }, {
                        id: 201,
                        name: 'MS - Senior (CA)'
                    }, {
                        id: 202,
                        name: 'MS - Junior (CA)'
                    }, {
                        id: 203,
                        name: 'MS - Midget (CA)'
                    }, {
                        id: 400,
                        name: 'Club - Age 6U'
                    }, {
                        id: 401,
                        name: 'Club - Age 7-8'
                    }, {
                        id: 402,
                        name: 'Club - Age 9-10'
                    }, {
                        id: 403,
                        name: 'Club - Age 11-12'
                    }, {
                        id: 404,
                        name: 'Club - Age 13-14'
                    }, {
                        id: 405,
                        name: 'Club - Age 15-16'
                    }, {
                        id: 406,
                        name: 'Club - Age 17-18'
                    }, {
                        id: 407,
                        name: 'Club - Age 19+'
                    }, {
                        id: 501,
                        name: 'Varsity'
                    }, {
                        id: 502,
                        name: 'Junior Varsity'
                    }, {
                        id: 503,
                        name: 'Frosh/Soph'
                    }, ],
                    levels: [{
                        id: 0,
                        short: 'All',
                        long: 'All',
                        teamId: 1973
                    }, {
                        id: 4,
                        short: 'HS',
                        long: 'High School',
                        teamId: '1973'
                    }]
                });
            </script>
            <h2 class="mt-2 clearfix"><img width="21px" height="20px" style="vertical-align: 0px;" src="/images/5/icons/gender/m.3_20.png"> Nathan Lee <small class="text-nowrap text-primary mr-2">Track &amp; Field Bio</small><follow-plugin user-id="{{appC.params.userId}}" athlete-id="8647967"></follow-plugin><button type="button" ng-if="appC.canClaimAthlete" ng-click="appC.claimAthlete()" uib-tooltip="Track your training progress and comment on event results." class="btn btn-outline-sport mt-2 mt-md-0 hidden-print">
        Claim this Athlete
      </button><a class="btn btn-outline-xc float-right hidden-print" href="/CrossCountry/Athlete.aspx?AID=8647967"><span class="hidden-sm-down">Go To </span><b><i>XC</i></b><span class="hidden-sm-down"> Bio</span></a></h2>
            <anet-photo-slider></anet-photo-slider>
            <uib-tabset class="underline-uib-tabs mt-2 pl-1 hidden-print" style="margin-bottom: 0.5px;" active="appC.activeTab">
                <uib-tab index="tab.id" ng-repeat="tab in appC.levels" select="appC.tabClick(tab)">
                    <uib-tab-heading><span class="hidden-sm-down">{{tab.long}}</span><span class="hidden-md-up">{{tab.short}}</span></uib-tab-heading>
                </uib-tab>
                <li class="dropdown ml-auto" uib-dropdown="" ng-if="appC.params.userId == 0 || (appC.params.userId > 0 &amp;&amp; appC.params.isAuthenticatedWithGoodStanding)"><a class="btn btn-link-sport dropdown-toggle no-caret" uib-dropdown-toggle="" href=""><i class="far fa-pencil"></i><span class="hidden-xs-down">
            {{appC.params.canEdit ? 'Make a Correction' : 'Suggest a Correction'}}
          </span></a>
                    <ul class="dropdown-menu dropdown-menu-right" uib-dropdown-menu="">
                        <li ng-if="appC.params.canEdit"><a class="dropdown-item" href="" ng-click="appC.params.edit=appC.params.edit=='editAthlete'?null:'editAthlete'; $event.stopPropagation()"><i class="far fa-pencil fa-fw"></i> Edit this athlete
            </a></li>
                        <li class="dropdown-header" ng-show="appC.params.edit=='editAthlete'">Choose a season to edit:</li>
                        <li ng-show="appC.params.edit=='editAthlete'"><a class="dropdown-item" target="_blank" href="/edit/team/1973/tf-outdoor/2019/athletes/roster/m/8647967" value="2019"><span class="text-primary">2019 Outdoor</span></a></li>
                        <li ng-show="appC.params.edit=='editAthlete'"><a class="dropdown-item" target="_blank" href="/edit/team/1973/tf-outdoor/2018/athletes/roster/m/8647967" value="2018"><span class="text-primary">2018 Outdoor</span></a></li>
                        <li ng-show="appC.params.edit=='editAthlete'"><a class="dropdown-item" target="_blank" href="/edit/team/1973/tf-outdoor/2017/athletes/roster/m/8647967" value="2017"><span class="text-primary">2017 Outdoor</span></a></li>
                        <li ng-show="appC.params.edit=='editAthlete'"><a class="dropdown-item" target="_blank" href="/edit/team/1973/tf-outdoor/2016/athletes/roster/m/8647967" value="2016"><span class="text-primary">2016 Outdoor</span></a></li>
                        <li class="divider" ng-show="appC.params.edit=='editAthlete'"></li>
                        <li><a class="dropdown-item" href="" ng-click="appC.params.edit = 'merge'"><i class="fas fa-users fa-fw"></i> Athlete has two profiles
            </a></li>
                        <li><a class="dropdown-item" href="" ng-if="!appC.params.canEdit" ng-click="appC.params.edit = 'name'"><i class="fal fa-highlighter fa-fw"></i> Athlete's name is misspelled
            </a><a class="dropdown-item" href="" ng-if="appC.params.canEdit" ng-click="appC.params.edit=appC.params.edit=='editAthlete'?null:'editAthlete'; $event.stopPropagation()"><i class="fal fa-highlighter fa-fw"></i> Athlete's name is misspelled
            </a></li>
                        <li><a class="dropdown-item" href="" ng-if="!appC.params.canEdit" ng-click="appC.params.edit = 'grade'"><i class="fal fa-sort-numeric-down fa-fw"></i> A grade or age division is incorrect
            </a><a class="dropdown-item" href="" ng-if="appC.params.canEdit" ng-click="appC.params.edit=appC.params.edit=='editAthlete'?null:'editAthlete'; $event.stopPropagation()"><i class="fal fa-sort-numeric-down fa-fw"></i> A grade or age division is incorrect
            </a></li>
                        <li><a class="dropdown-item" href="" ng-click="appC.params.edit = 'mark'"><i class="far fa-clock fa-fw"></i> A time or mark is incorrect
            </a></li>
                    </ul>
                </li>
            </uib-tabset>
            <div class="alert alert-info mt-2" ng-if="appC.params.edit=='mark'">
                <button type="button" class="close" ng-click="appC.params.edit=null"><span><i class="far fa-times"></i></span></button><span ng-if="appC.params.canEdit"><strong>Click</strong> the <i class="far fa-pencil"></i> next to the incorrect mark below.
      </span><span ng-if="!appC.params.canEdit">
        Corrections are the responsibility of the team coach. <strong>Tell your coach</strong> about the error.
      </span></div>
            <div class="row">
                <div class="col-md-5 push-md-7 col-xl-4 push-xl-8 col-print-5 d-flex flex-column seasonRecords" id="seasonRecords">
                    <div ng-include="'corrections/correct.tpl.html' | templatesURL"></div>
                    <div id="ad_InPage_320" class="Ad ATF Ad300x250 hidden-print text-center mb-2">
                        <script type="text/javascript">
                            googletag.cmd.push(function() {
                                googletag.display('ad_InPage_320');
                            });
                        </script>
                    </div>
                    <training-log-overview athlete-id="8647967" show-claims="true"></training-log-overview>
                    <div class="card mb-2 flex-first flex-md-unordered">
                        <div class="card-header pointer p-3" ng-click="seasonRecordsCollapsed = !seasonRecordsCollapsed">
                            <h4 class="mb-0"><i class="far fa-trophy"></i> Season Records
              </h4></div>
                        <div uib-collapse="seasonRecordsCollapsed" class="card-block p-3 collapse in DataTable">
                            <table class="table table-sm histEvent">
                                <tbody>
                                    <tr>
                                        <td colspan="3">
                                            <h5 class="bold">800 Meters</h5></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2017 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">10</td>
                                        <td><a href="/result/NViJkvwFVSB4j6KId">2:33.60</a></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2018 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">11</td>
                                        <td><a href="/result/x8iQ5x2cmSLo5N4SN">2:23.84</a><span class="text-muted" style="font-weight:normal;" uib-tooltip="Improvement from previous Season Records" tooltip-placement="bottom"> *</span></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2019 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">12</td>
                                        <td><a href="/result/pjiY44jIwS6rvDzcO">2:23.31</a><a rel="nofollow" href="/post/pjiY44jIwS6rvDzcO"><small class="text-muted pr-text" style="font-weight:normal; margin-left: 4px;" data-toggle="tooltip" title="Personal Record">PR</small></a><span class="text-muted" style="font-weight:normal;" uib-tooltip="Improvement from previous Season Records" tooltip-placement="bottom"> *</span></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-sm histEvent">
                                <tbody>
                                    <tr>
                                        <td colspan="3">
                                            <h5 class="bold">1600 Meters</h5></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2016 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">9</td>
                                        <td><a href="/result/XVivnWkHRpHOxm2Ji8">5:34.85</a></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2017 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">10</td>
                                        <td><a href="/result/VPiLAzkUrLHx3qBjcm">5:31.36</a><span class="text-muted" style="font-weight:normal;" uib-tooltip="Improvement from previous Season Records" tooltip-placement="bottom"> *</span></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2018 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">11</td>
                                        <td><a href="/result/o3ionZdhZJHw8ONLfe">5:16.56</a><span class="text-muted" style="font-weight:normal;" uib-tooltip="Improvement from previous Season Records" tooltip-placement="bottom"> *</span></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2019 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">12</td>
                                        <td><a href="/result/0NirKKQf3VHXVYjvcm">5:05.34</a><a rel="nofollow" href="/post/0NirKKQf3VHXVYjvcm"><small class="text-muted pr-text" style="font-weight:normal; margin-left: 4px;" data-toggle="tooltip" title="Personal Record">PR</small></a><span class="text-muted" style="font-weight:normal;" uib-tooltip="Improvement from previous Season Records" tooltip-placement="bottom"> *</span></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-sm histEvent">
                                <tbody>
                                    <tr>
                                        <td colspan="3">
                                            <h5 class="bold">3200 Meters</h5></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2017 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">10</td>
                                        <td><a href="/result/KpiNxnQIaWSgRz52fK">11:50.56</a></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2018 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">11</td>
                                        <td><a href="/result/pjipV2acVmS6rvDzcO">11:11.85</a><span class="text-muted" style="font-weight:normal;" uib-tooltip="Improvement from previous Season Records" tooltip-placement="bottom"> *</span></td>
                                    </tr>
                                    <tr class="L4 histSeason">
                                        <td style="width: 115px;">2019 Outdoor</td>
                                        <td class="text-primary" style="width:57px;">12</td>
                                        <td><a href="/result/m1irzznHMQSXMP14c6">11:00.20</a><a rel="nofollow" href="/post/m1irzznHMQSXMP14c6"><small class="text-muted pr-text" style="font-weight:normal; margin-left: 4px;" data-toggle="tooltip" title="Personal Record">PR</small></a><span class="text-muted" style="font-weight:normal;" uib-tooltip="Improvement from previous Season Records" tooltip-placement="bottom"> *</span></td>
                                    </tr>
                                </tbody>
                            </table><span class="text-muted">*Improvement</span></div>
                    </div>
                    <div id="ad_InPage_Box" class="hidden-print" style="text-align:center; margin-bottom: 10px;">
                        <script type="text/javascript">
                            googletag.cmd.push(function() {
                                googletag.display('ad_InPage_Box');
                            });
                        </script>
                    </div>
                </div>
                <div class="col-md-7 pull-md-5 col-xl-8 pull-xl-4 col-print-7 athleteResults">
                    <div id="L-4_S-2019_T-1973" class="card mb-2 L4 season S2019 T1973">
                        <div class="card-header py-3 px-2 pointer" ng-click="season_201941973 = !season_201941973">
                            <h5 class="mb-0">2019 Outdoor Season 
                    <br class="hidden-lg-up"><small><a ng-click="$event.stopPropagation();" href="School.aspx?SchoolID=1973"><b>Oakland Tech HS</b></a><span class="float-right" style="margin-top:4px;">12th Grade</span></small></h5></div>
                        <div class="card-block px-2 pt-2 pb-0" uib-collapse="season_201941973">
                            <h5>800 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_120242785">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(120242785)"><i class="far fa-pencil text-primary mr-2"></i></a><i>105 </i></td>
                                        <td style="width:110px;"><a href="/result/yEiXE6BFzSeNq0rcN">2:30.30</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Feb 23</td>
                                        <td><a href="meet/353641#1973">Skyline Invitational</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_124409426">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(124409426)"><i class="far fa-pencil text-primary mr-2"></i></a><i>19 </i></td>
                                        <td style="width:110px;"><a href="/result/pjiY44jIwS6rvDzcO">2:23.31</a><a rel="nofollow" href="/post/pjiY44jIwS6rvDzcO"><small class="text-muted pr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Personal Record">PR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 3</td>
                                        <td><a href="meet/360557#1973">Region Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5>1600 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_120243352">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(120243352)"><i class="far fa-pencil text-primary mr-2"></i></a><i>80 </i></td>
                                        <td style="width:110px;"><a href="/result/pjiYQ1vIVdH6rvDzcO">5:14.98</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Feb 23</td>
                                        <td><a href="meet/353641#1973">Skyline Invitational</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_120516454">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(120516454)"><i class="far fa-pencil text-primary mr-2"></i></a><i>138 </i></td>
                                        <td style="width:110px;"><a href="/result/AWiK0Z2IPJHYWdKyIN">5:07.95</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 2</td>
                                        <td><a href="meet/351199#1973">Dan Gabor Invitational</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_129507784">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(129507784)"><i class="far fa-pencil text-primary mr-2"></i></a><i>5 </i></td>
                                        <td style="width:110px;"><a href="/result/vOiqEEJf14iX2Weaco">5:05.65</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 24</td>
                                        <td><a href="meet/360559#1973">Region Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_132997388">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(132997388)"><i class="far fa-pencil text-primary mr-2"></i></a><i>1 </i></td>
                                        <td style="width:110px;"><a href="/result/0NirKKQf3VHXVYjvcm">5:05.34</a><a rel="nofollow" href="/post/0NirKKQf3VHXVYjvcm"><small class="text-muted pr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Personal Record">PR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 9</td>
                                        <td><a href="meet/360560#1973">Region Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5>3200 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_122695430">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(122695430)"><i class="far fa-pencil text-primary mr-2"></i></a><i>271 </i></td>
                                        <td style="width:110px;"><a href="/result/16iVkr6sgXSdmEKxIy">11:05.82</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 16</td>
                                        <td><a href="meet/350697#1973">Dublin Distance Fiesta</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_126517303">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(126517303)"><i class="far fa-pencil text-primary mr-2"></i></a><i>97 </i></td>
                                        <td style="width:110px;"><a href="/result/kxiMnMVIYQSrqaEWio">11:24.08</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 13</td>
                                        <td><a href="meet/354505#1973">Granada Distance &amp; Sprint Festival</a></td>
                                        <td class="text-muted text-right text-nowrap">O F</td>
                                    </tr>
                                    <tr id="rID_130523204">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(130523204)"><i class="far fa-pencil text-primary mr-2"></i></a><i>10 </i></td>
                                        <td style="width:110px;"><a href="/result/Z8iMJAjhOmSazrAZTK">11:07.11</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 27</td>
                                        <td><a href="meet/359266#1973">Clash of the Titans</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_134218685">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(134218685)"><i class="far fa-pencil text-primary mr-2"></i></a><i>4 </i></td>
                                        <td style="width:110px;"><a href="/result/m1irzznHMQSXMP14c6">11:00.20</a><a rel="nofollow" href="/post/m1irzznHMQSXMP14c6"><small class="text-muted pr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Personal Record">PR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 16</td>
                                        <td><a href="meet/360563#1973">CIF Oakland Section Finals</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5 class="bold">4x800 Relay</h5>
                            <table class="table table-sm table-striped table-responsive">
                                <tbody>
                                    <tr id="rID_122690412">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(122690412)"><i class="far fa-pencil text-primary mr-1"></i></a><i>2 </i></td>
                                        <td style="width:110px;">9:14.85</td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 23</td>
                                        <td><a href="meet/355302#1973">Oakland Invitational Relays</a>
                                            <br><a class="small" href="/TrackAndField/Athlete.aspx?AID=10508731">Devon DelaCruz</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=10508715">Noah Basham</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=14469263">Peace Nwakudu</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=8647967">Nathan Lee</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="L-4_S-2018_T-1973" class="card mb-2 L4 season S2018 T1973">
                        <div class="card-header py-3 px-2 pointer" ng-click="season_201841973 = !season_201841973">
                            <h5 class="mb-0">2018 Outdoor Season 
                    <br class="hidden-lg-up"><small><a ng-click="$event.stopPropagation();" href="School.aspx?SchoolID=1973"><b>Oakland Tech HS</b></a><span class="float-right" style="margin-top:4px;">11th Grade</span></small></h5></div>
                        <div class="card-block px-2 pt-2 pb-0" uib-collapse="season_201841973">
                            <h5>800 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_107962633">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(107962633)"><i class="far fa-pencil text-primary mr-2"></i></a><i>13 </i></td>
                                        <td style="width:110px;"><a href="/result/x8iQ5x2cmSLo5N4SN">2:23.84<small class="text-muted sr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Season Record">SR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 18</td>
                                        <td><a href="meet/326059#1973">Warriors Regional Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5>1600 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_104474694">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(104474694)"><i class="far fa-pencil text-primary mr-2"></i></a><i>5 </i></td>
                                        <td style="width:110px;"><a href="/result/lBiaY03IdlHVOwB5iy">5:24.91</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 24</td>
                                        <td><a href="meet/326133#1973">Oakland Invitational Relays</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_110629442">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(110629442)"><i class="far fa-pencil text-primary mr-2"></i></a><i>43 </i></td>
                                        <td style="width:110px;"><a href="/result/o3ionZdhZJHw8ONLfe">5:16.56<small class="text-muted sr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Season Record">SR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 28</td>
                                        <td><a href="meet/323490#1973">Clash of the Titans</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_112997374">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(112997374)"><i class="far fa-pencil text-primary mr-2"></i></a><i>13 </i></td>
                                        <td style="width:110px;"><a href="/result/gBidzLQCNDHk12BxcA">5:23.39</a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 9</td>
                                        <td><a href="meet/330076#1973">Raiders Regional Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5>3200 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_110854263">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(110854263)"><i class="far fa-pencil text-primary mr-2"></i></a><i>41 </i></td>
                                        <td style="width:110px;"><a href="/result/Jdi2oDoCKqSokvR2cA">11:19.86</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 21</td>
                                        <td><a href="meet/320265#1973">Halden Invitational</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_111635032">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(111635032)"><i class="far fa-pencil text-primary mr-2"></i></a><i>6 </i></td>
                                        <td style="width:110px;"><a href="/result/pjipV2acVmS6rvDzcO">11:11.85<small class="text-muted sr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Season Record">SR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 3</td>
                                        <td><a href="meet/326060#1973">Athletics Regional Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_115134159">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(115134159)"><i class="far fa-pencil text-primary mr-2"></i></a><i>4 </i></td>
                                        <td style="width:110px;"><a href="/result/m1io0jOsMQSXMP14c6">11:18.90</a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 23</td>
                                        <td><a href="meet/330162#1973">CIF Oakland Section Trials and Finals</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="L-4_S-2017_T-1973" class="card mb-2 L4 season S2017 T1973">
                        <div class="card-header py-3 px-2 pointer" ng-click="season_201741973 = !season_201741973">
                            <h5 class="mb-0">2017 Outdoor Season 
                    <br class="hidden-lg-up"><small><a ng-click="$event.stopPropagation();" href="School.aspx?SchoolID=1973"><b>Oakland Tech HS</b></a><span class="float-right" style="margin-top:4px;">10th Grade</span></small></h5></div>
                        <div class="card-block px-2 pt-2 pb-0" uib-collapse="season_201741973">
                            <h5>800 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_92099321">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(92099321)"><i class="far fa-pencil text-primary mr-2"></i></a><i>10 </i></td>
                                        <td style="width:110px;"><a href="/result/NViJkvwFVSB4j6KId">2:33.60<small class="text-muted sr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Season Record">SR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 25</td>
                                        <td><a href="meet/300705#1973">Regional Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_96196225">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(96196225)"><i class="far fa-pencil text-primary mr-2"></i></a><i>7 </i></td>
                                        <td style="width:110px;"><a href="/result/x8iQ0gWsmSLo5N4SN">2:34.90</a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 10</td>
                                        <td><a href="meet/300708#1973">Regional Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5>1600 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_83811782">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(83811782)"><i class="far fa-pencil text-primary mr-2"></i></a><i>57 </i></td>
                                        <td style="width:110px;"><a href="/result/eAigalpSMzHwyVqRfv">5:32.22</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Feb 25</td>
                                        <td><a href="meet/288078#1973">Skyline Invitational</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_84401595">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(84401595)"><i class="far fa-pencil text-primary mr-2"></i></a><i>229 </i></td>
                                        <td style="width:110px;"><a href="/result/VPiLAzkUrLHx3qBjcm">5:31.36<small class="text-muted sr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Season Record">SR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 4</td>
                                        <td><a href="meet/288755#1973">Dan Gabor Invitational</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_87878220">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(87878220)"><i class="far fa-pencil text-primary mr-2"></i></a><i>24 </i></td>
                                        <td style="width:110px;"><a href="/result/31i8ZxDIWYHv6a3Vc1">5:36.04</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 25</td>
                                        <td><a href="meet/290717#1973">Oakland Invitational Relays</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_92099515">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(92099515)"><i class="far fa-pencil text-primary mr-2"></i></a><i>10 </i></td>
                                        <td style="width:110px;"><a href="/result/5Oi6B0xhNBHBlgNKIl">5:41.76</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 25</td>
                                        <td><a href="meet/300705#1973">Regional Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_96196610">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(96196610)"><i class="far fa-pencil text-primary mr-2"></i></a><i>11 </i></td>
                                        <td style="width:110px;"><a href="/result/2KiKW2NHwKHy5ag8cr">5:33.93</a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 10</td>
                                        <td><a href="meet/300708#1973">Regional Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5>3200 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_85463392">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(85463392)"><i class="far fa-pencil text-primary mr-2"></i></a><i>245 </i></td>
                                        <td style="width:110px;"><a href="/result/KpiNxnQIaWSgRz52fK">11:50.56<small class="text-muted sr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Season Record">SR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 18</td>
                                        <td><a href="meet/284933#1973">Dublin Distance Fiesta</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_97213963">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(97213963)"><i class="far fa-pencil text-primary mr-2"></i></a><i> </i></td>
                                        <td style="width:110px;"><a href="/result/pjipdnvFVmS6rvDzcO">DNS</a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 25</td>
                                        <td><a href="meet/300709#1973">CIF Oakland Section Finals</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5 class="bold">4x800 Relay</h5>
                            <table class="table table-sm table-striped table-responsive">
                                <tbody>
                                    <tr id="rID_87877208">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(87877208)"><i class="far fa-pencil text-primary mr-1"></i></a><i>16 </i></td>
                                        <td style="width:110px;">10:17.36</td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 25</td>
                                        <td><a href="meet/290717#1973">Oakland Invitational Relays</a>
                                            <br><a class="small" href="/TrackAndField/Athlete.aspx?AID=10508715">Noah Basham</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=10508735">Jasper Schoenberger</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=10518632">Oscar Ryan</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=8647967">Nathan Lee</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="L-4_S-2016_T-1973" class="card mb-2 L4 season S2016 T1973">
                        <div class="card-header py-3 px-2 pointer" ng-click="season_201641973 = !season_201641973">
                            <h5 class="mb-0">2016 Outdoor Season 
                    <br class="hidden-lg-up"><small><a ng-click="$event.stopPropagation();" href="School.aspx?SchoolID=1973"><b>Oakland Tech HS</b></a><span class="float-right" style="margin-top:4px;">9th Grade</span></small></h5></div>
                        <div class="card-block px-2 pt-2 pb-0" uib-collapse="season_201641973">
                            <h5>400 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_75550672">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(75550672)"><i class="far fa-pencil text-primary mr-2"></i></a><i> </i></td>
                                        <td style="width:110px;"><a href="/result/Jdi2WNdUaIokvR2cA">DNS</a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 6</td>
                                        <td><a href="meet/275447#1973">Raiders Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5>800 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_75550697">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(75550697)"><i class="far fa-pencil text-primary mr-2"></i></a><i> </i></td>
                                        <td style="width:110px;"><a href="/result/kxi30gnINSrqaEWio">DNS</a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 6</td>
                                        <td><a href="meet/275447#1973">Raiders Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5>1600 Meters</h5>
                            <table class="table table-sm table-responsive table-hover">
                                <tbody>
                                    <tr id="rID_65920110">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(65920110)"><i class="far fa-pencil text-primary mr-2"></i></a><i>77 </i></td>
                                        <td style="width:110px;"><a href="/result/P8iWZjwiaZHl01epul">6:08.71</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Feb 27</td>
                                        <td><a href="meet/257031#1973">Skyline Invitational</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_65913700">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(65913700)"><i class="far fa-pencil text-primary mr-2"></i></a><i>65 </i></td>
                                        <td style="width:110px;"><a href="/result/P8iWZjwiaZHl01epul">5:44.61</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Feb 27</td>
                                        <td><a href="meet/257031#1973">Skyline Invitational</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_66805368">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(66805368)"><i class="far fa-pencil text-primary mr-2"></i></a><i>55 </i></td>
                                        <td style="width:110px;"><a href="/result/x8iQOaAhepHLo5N4SN">5:35.30</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 12</td>
                                        <td><a href="meet/259742#1973">TKA Sprint and Distance Carnival</a></td>
                                        <td class="text-muted text-right text-nowrap">FS F</td>
                                    </tr>
                                    <tr id="rID_68158459">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(68158459)"><i class="far fa-pencil text-primary mr-2"></i></a><i>16 </i></td>
                                        <td style="width:110px;"><a href="/result/vOiZZ1ou14iX2Weaco">5:35.48</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 26</td>
                                        <td><a href="meet/261693#1973">Oakland Invitational Relays</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_71035393">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(71035393)"><i class="far fa-pencil text-primary mr-2"></i></a><i> </i></td>
                                        <td style="width:110px;"><a href="/result/kxi30g3tYDHrqaEWio">DNS</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 15</td>
                                        <td><a href="meet/275443#1973">Warriors Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_72478361">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(72478361)"><i class="far fa-pencil text-primary mr-2"></i></a><i>8 </i></td>
                                        <td style="width:110px;"><a href="/result/XVivnWkHRpHOxm2Ji8">5:34.85<small class="text-muted sr-text" style="font-weight:normal; margin-left: 4px;" uib-tooltip="Season Record">SR</small></a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 22</td>
                                        <td><a href="meet/275446#1973">Athletics Meet</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_74349499">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(74349499)"><i class="far fa-pencil text-primary mr-2"></i></a><i>44 </i></td>
                                        <td style="width:110px;"><a href="/result/4mi55k1sM6HoapzdcZ">5:39.99</a></td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 30</td>
                                        <td><a href="meet/263034#1973">Clash of the Titans</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                    <tr id="rID_78280895">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(78280895)"><i class="far fa-pencil text-primary mr-2"></i></a><i>3 </i></td>
                                        <td style="width:110px;"><a href="/result/OoiOgvgHaJHKV1gqiy">5:35.63</a></td>
                                        <td class="text-nowrap" style="width: 60px;">May 26</td>
                                        <td><a href="meet/275450#1973">Oakland Section Championships</a></td>
                                        <td class="text-muted text-right text-nowrap">JV F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5 class="bold">4x400 Relay</h5>
                            <table class="table table-sm table-striped table-responsive">
                                <tbody>
                                    <tr id="rID_71035361">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(71035361)"><i class="far fa-pencil text-primary mr-1"></i></a><i>4 </i></td>
                                        <td style="width:110px;">3:58.51</td>
                                        <td class="text-nowrap" style="width: 60px;">Apr 15</td>
                                        <td><a href="meet/275443#1973">Warriors Meet</a>
                                            <br><a class="small" href="/TrackAndField/Athlete.aspx?AID=5978344">Joseph Harmon</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=8647967">Nathan Lee</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=7605237">Jonah Lounds</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=12295674">Nick Kleiber</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h5 class="bold">4x800 Relay</h5>
                            <table class="table table-sm table-striped table-responsive">
                                <tbody>
                                    <tr id="rID_68158368">
                                        <td class="text-nowrap" style="width:35px;"><a href="" ng-if="appC.params.edit=='mark' &amp;&amp; appC.params.canEdit" ng-click="appC.edit(68158368)"><i class="far fa-pencil text-primary mr-1"></i></a><i>3 </i></td>
                                        <td style="width:110px;">9:12.15</td>
                                        <td class="text-nowrap" style="width: 60px;">Mar 26</td>
                                        <td><a href="meet/261693#1973">Oakland Invitational Relays</a>
                                            <br><a class="small" href="/TrackAndField/Athlete.aspx?AID=5978344">Joseph Harmon</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=8647967">Nathan Lee</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=7605237">Jonah Lounds</a>, <a class="small" href="/TrackAndField/Athlete.aspx?AID=12295674">Nick Kleiber</a></td>
                                        <td class="text-muted text-right text-nowrap">V F</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <anet-site-app></anet-site-app>

        <div id='ad_video1x1' style="text-align: center">
            <script type='text/javascript'>
                googletag.cmd.push(function() {
                    googletag.display('ad_video1x1');
                });
            </script>
        </div>

        <div id="ad_bottom1x1">
            <script type='text/javascript'>
                googletag.cmd.push(function() {
                    googletag.display('ad_bottom1x1');
                });
            </script>
        </div>
        <div id="ad_BTF_Banner" class="Ad BTF Banner" aria-hidden="true">
            <script type='text/javascript'>
                googletag.cmd.push(function() {
                    googletag.display('ad_BTF_Banner');
                });
            </script>
        </div>

    </main>

    <recent-videos style="position: relative;"></recent-videos>

    <footer id="anetFooter">
        <div class="footer-top hidden-print d-print-none">
            <div class="footer-row-1">
                <a class="footer-logo" href="/">
                    <img alt="Athletic.net Home" src="https://s3.amazonaws.com/media.athletic.net/athletic-logos/AthleticNet_Yellow.svg" style="width: 140px; height: auto; max-width: 100%;" /></a>

                <div class="footer-stats">
                    <div id="f_StatsShowing">
                        <div class="coachmeetStat">57,140 FREE <span>Coach Accounts</span></div>
                        <div class="resultsStat">104,616,276<span> Results Posted</span></div>
                        <div class="athleteStat">9.7 Million + <span>Athlete Profiles</span></div>
                    </div>
                    <div id="f_StatsHover">
                        <div class="coachmeetStat">209,743<span> Meets Uploaded</span></div>
                        <div class="resultsStat">8,972<span> Results in Last Hour</span></div>
                        <div class="athleteStat">9,783,847<span> Athlete Profiles</span></div>
                    </div>
                </div>
            </div>

            <div class="footer-row-2">
                <div id="footerMessage_Accounts">

                    <div id="footerMessage_NonSupporter">
                        <p>
                            <b>Upgrade your  personal account</b> to gain extra features such as team photos, advanced meet hosting, custom performance lists, priority email support, ad-free viewing experience, and more! <a href="/features/" style="margin-left: 10px; white-space: nowrap;"><i class="fas fa-star yellowS" style="margin-right: 4px;"></i>Learn more</a>
                        </p>

                        <a class="btn white-button" href="/userhome/127340/subscriptions/individual"><i class="fas fa-star yellowS" style="margin-right: 4px;"></i>Upgrade to Athletic+</a>
                    </div>

                </div>

                <div class="row">
                    <div class="col-sm-4 col-xs-6 col-6 f_Links">
                        <b>Features & Pricing</b>
                        <ul>
                            <li><a href="/features/coaches">For Coaches</a></li>
                            <li><a href="/features/directors-timers">Event Directors & Timers</a></li>
                            <li><a href="/features/athletes">Athletes, Parents & Fans</a></li>

                        </ul>
                    </div>
                    <div class="col-sm-4 col-xs-6 col-6 f_Links">
                        <b>Questions?</b>
                        <ul>
                            <li><a href="https://support.athletic.net/">Documentation</a></li>
                            <li><a href="javascript:AnetOpenHelp();">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4 f_Links hidden-xs hidden-xs-down d-none d-sm-block">
                        <b>Media</b>
                        <ul>
                            <li>
                                <a href="https://www.facebook.com/Athletic.net">Facebook</a>
                            </li>
                            <li>
                                <a href="http://twitter.com/AthleticDotNet">Twitter</a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/athleticdotnet/">Instagram</a>
                            </li>

                            <li>
                                <a href="https://athletic.tv/" target="_blank">
                                    <img alt="AthleticTV" src="https://s3.amazonaws.com/media.athletic.net/athletic-logos/AthleticTV_Yellow.svg" style="width: 80px; vertical-align: -3px;" /></a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-xs-12 col-12 visible-xs hidden-sm-up d-sm-none" style="margin: 5px 0;">
                        <a style="margin-right: 15px;" href="https://www.facebook.com/Athletic.net"><i class="fab fa-facebook fa-3x"></i></a>
                        <a style="margin-right: 15px;" href="http://twitter.com/AthleticDotNet"><i class="fab fa-twitter fa-3x"></i></a>
                        <a href="https://www.instagram.com/athleticdotnet/"><i class="fab fa-instagram fa-3x"></i></a>

                        <div style="margin-top: 10px;">
                            <a href="https://athletic.tv/" target="_blank">
                                <img alt="AthleticTV" src="https://s3.amazonaws.com/media.athletic.net/athletic-logos/AthleticTV_Yellow.svg" style="width: 80px; vertical-align: 0px;" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-row-3">
            2019 <a href="http://www.runnerspace.com/">RunnerSpace.com</a><span class="hidden-print d-print-none"> - <a href="http://about.runnerspace.com/">About</a> - <a href="http://about.runnerspace.com/">Advertise</a></span>
            <div class="push-right-on-desktop">
                2019 Athletic.net - All rights reserved
                <span class="hidden-print d-print-none">- <a href="/Privacy.aspx">Privacy Policy</a></span>
            </div>
        </div>
    </footer>

    <div id='bgTakeover' style="display: none;">
        <script type='text/javascript'>
            googletag.cmd.push(function() {
                googletag.display('bgTakeover');
            });
        </script>
    </div>

    <script type="text/javascript">
        function SetupTakeover(left, right) {
            document.getElementById('bgTakeoverLeft').innerHTML = left.innerHTML;
            document.getElementById('bgTakeoverRight').innerHTML = right.innerHTML;
            document.getElementById('bgTakeover').innerHTML = '';
        }

        function SetupANetCustomAd(dest, source) {
            document.getElementById(dest).appendChild(source);
            document.getElementById(dest).firstChild.setAttribute('style', 'display:none');
        }
    </script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-297644-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-297644-1', {
            'dimension1': 'User',
            'user_id': '127340'
        });

        function gtagTOga(a, b, category, action, label, value, fieldsObject) {
            gtag('event', action, {
                event_category: category,
                event_label: label,
                value: value,
                non_interaction: true
            });
        }
        pbjs.que.push(function() {
            pbjs.enableAnalytics([{
                provider: 'ga',
                options: {
                    enableDistribution: true,
                    global: 'gtagTOga'
                }
            }]);
        });
    </script>
    <!-- End Google Analytics Tag -->

    <!-- Begin comScore Tag -->
    <script>
        var _comscore = _comscore || [];
        _comscore.push({
            c1: "2",
            c2: "22801758"
        });
        (function() {
            var s = document.createElement("script"),
                el = document.getElementsByTagName("script")[0];
            s.async = true;
            s.src = (document.location.protocol == "https:" ? "https://sb" : "http://b") + ".scorecardresearch.com/beacon.js";
            el.parentNode.insertBefore(s, el);
        })();
    </script>
    <noscript><img src="http://b.scorecardresearch.com/p?c1=2&c2=22801758&cv=2.0&cj=1" /></noscript>
    <!-- End comScore Tag -->

    <div id="addThisSetup">
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=athleticnet" async="async"></script>
    </div>

    <!-- Begin Quantcast Tag, part 2 - part one in header -->
    <script type="text/javascript">
        _qevents.push([{
            qacct: "p-357yONfRnfd4g"
        }, {
            qacct: "p-56TeoNo_KrtZ6"
        }]);
    </script>
    <noscript>
        <div style="display: none;">
            <img src="//pixel.quantserve.com/pixel/p-357yONfRnfd4g.gif" border="0" height="1" width="1" alt="Quantcast" />
            <img src="//pixel.quantserve.com/pixel/p-56TeoNo_KrtZ6.gif" border="0" height="1" width="1" alt="Quantcast" />
        </div>
    </noscript>
    <!-- End Quantcast Tag, part 2 -->

    <link href="https://stage.athletic.net/css/site-app-v-js8bf5zHnoQh5DACOOF50cee6h26lzB54ApBTtkVBSw1" rel="stylesheet" />

    <script src="https://stage.athletic.net/js/site-app-v-ZSYJpcm78z402sd5058do2v3WQTFNZSxOmOU6KI7s1"></script>

</body>

</html>
