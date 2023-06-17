class LoadNews {
    actualRow
    loadStep
    maxElement
    constructor () {
        this.container = $("#news-container")
        this.container.html(null)
        this.loadSwitch = true

        this.actualRow = 0
        this.loadStep = 3
        this.maxElement = 15

        this.queryString = this.getSequenceValue()

        if (this.queryString !== null) {
            this.actualRow = parseInt(this.queryString)
        }

        this.loadDatas(true)

        this.scrollAndResizeAction()
    }

    getSequenceValue() {
        let value = null

        let queryString = window.location.search;
        if (queryString) {
            let myArray = queryString.split("=");
        
            value = myArray[myArray.length-1]
        }
        return value;
    }

    loadDatas = async (firstLoad) => {
        this.loadSwitch = false
        
        let startload = (firstLoad) ? this.actualRow - (this.loadStep * 4) : this.actualRow + this.loadStep;
        let endload = (firstLoad) ? this.actualRow + (this.loadStep * 2) : this.actualRow + (this.loadStep * 2);

        let loadData = null

        try {
            loadData = await $.ajax({
                method: "GET",
                url: "/backend/load.php",
                data: {startload: startload, endload: endload},
                success: function(response){
                    //return response;
                    return JSON.parse(response);
                },
                error: function() {
                    alert("Error: No respone from AJAX!");
                }
            });
        } catch (error) {
            console.error(error);
        }

        let newsList = JSON.parse(loadData);

        for (const key in newsList) {
            let value = newsList[key];

            this.container.append(`
            <div id="${value.sequence}" class="p-3 m-3 bg-light rounded">
                <div class="pb-4 fw-bold">
                    <span>${value.sequence} Cím:</span>
                    <span>${value.title}</span>
                </div>
                <span>${value.text}</span>
                <div class="text-center"><a class="btn btn-primary" href="news.php?inc=${value.sequence}">Olvas</a></div>
            </div>`);
        };

        // Scroll
        if (firstLoad) {
            $('html, body').animate({scrollTop: $(`#${this.actualRow}`).offset().top}, 0);
        }

        this.actualRow = this.actualRow + this.loadStep;

        // Letörli a legfelső sorokat ha több mint a maximum megendedett. (this.maxElement)
        var rows = this.container.find("div[id]").length
    
        while (rows > this.maxElement) {
            this.container.find("div[id]")[0].remove()
            var rows = this.container.find("div[id]").length
        }

        this.loadSwitch = true
    }

    scrollAndResizeAction = () => {        
        var classThis = this;
        $(window).on("scroll", function() {
            classThis.actualNewsCheck()
        });
        
        $(window).on("resize", function() {
            classThis.actualNewsCheck()
        });
    }
    
    actualNewsCheck() {        
        if (this.loadSwitch) {
            
            $(`#${this.actualRow}`).css('color', 'green')
            
            // Ha eléri az aktuális hír (zöld) a képernyő tetejét akkor újjakat tölt be az aljára.
            if ($(`#${this.actualRow}`).offset() !== undefined) {
                
                var newsFullTop = $(`#${this.actualRow}`).offset().top
    
                var screenTop = $(window).scrollTop()
    
                var newsPozition = newsFullTop - screenTop

                if (newsPozition <= 0) {
                    return this.loadDatas(false)
                }
            }  
        }
    }
}

$(function() { 
    const loadNews = new LoadNews()
});