<div class="w__poll--inner">
  <h2 class="w__poll--block-title"><%= data.name %></h2>
  <!--img src="public/assets/images/erase-poll.jpg" alt="title"-->
  <img src="<%= img %>" alt="title">
  <h3 class="w__poll--question"><%= data.teaser %>
  </h3>
  <form class="w__poll--form">
    <div class="w__poll--radios">
    <% _.forEach(elements, function (e) { %>
      <% if (e.type==='poll_answer') { %>    
        <label>
          <input value='<%= e.id %>' type="radio" class="" name="radio">    
          <span>
            <%= e.data.text %>
          </span>
        </label>    
      <% } %>
    <% }); %>
    </div>
    <div class="form-err"></div>
    <input type="submit" value="صوّتي" class="w__poll--btn-s">    
  </form>
</div>