$(function(){  
  function appendOption(place){
    var html = `<option value="${place.id}" data-place="${place.id}">${place.name}</option>`;
    return html;
  }
  function appendCountriesBox(insertHTML){
    var countrySelectHtml = '';
    countrySelectHtml =`<div class="select-new__place--country">
                          <p class="select-new__place--country--headline">国</p>
                          <select class="country-box" id="country" name="post[place_id]">
                            <option value="" data-place="国を選択してください">国を選択してください</option>
                              ${insertHTML}
                          <select>
                        </div>`;
    $('.select-new__place').append(countrySelectHtml);
  }
  function appendCitiesBox(insertHTML){
    var citySelectHtml = '';
    citySelectHtml = `<div class="select-new__place--city">
                        <p class="select-new__place--city--headline">都市</p>
                        <select class="city-box" id="city" name="place[place_id]">
                          <option value="" data-category="都市を選択してください">都市を選択してください</option>
                            ${insertHTML}
                        </select>
                      </div>`;
    $('.select-new__place').append(citySelectHtml);
  }
  $('#area').on("change",function(){
    var area = document.getElementById('area').value;
    if (area != "エリアを選択してください"){
      $.ajax({
        url: 'get_countries',
        type: 'GET',
        data: { parent_name: area },
        dataType: 'json'
      })
      .done(function(countries){
        $('.select-new__place--country').remove();
        $('.select-new__place--city').remove();
        var insertHTML = '';
        countries.forEach(function(country){
          insertHTML += appendOption(country);
        });
        appendCountriesBox(insertHTML);
      })
      .fail(function(){
        alert('国の取得に失敗しました');
      })
    }else{
      $('.select-new__place--country').remove();
      $('.select-new__place--city').remove();
    }
  });
  $('.select-new__place').on('change', '#country', function(){
    var country = $('#country option:selected').data('place');
    if (country != "国を選択してください"){
      $.ajax({
        url: 'get_cities',
        type: 'GET',
        data: { child_id: country },
        dataType: 'json'
      })
      .done(function(cities){
        if (cities.length != 0) {
          $('.select-new__place--city').remove();
          var insertHTML = '';
          cities.forEach(function(city){
            insertHTML += appendOption(city);
          });
          appendCitiesBox(insertHTML);
        }
      })
      .fail(function(){
        alert('都市の取得に失敗しました');
      })
    }else{
      $('.select-new__place--city').remove();
    }
  });
});