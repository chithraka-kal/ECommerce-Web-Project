<%
    String path = request.getParameter("path");
    if(path==null)path="../../";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<%=path%>js/tailwindconfig.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  </head>
  <body>
    <div class="flex justify-center items-center min-h-screen bg-gray-100">
        <form id="signin" class="w-[350px] flex flex-col items-center gap-3 bg-white  p-5 rounded-xl shadow-lg" action="#" method="POST">
        <div class="flex flex-col items-center">
          <img class="h-[50px]" src="<%=path%>img/1.png" alt="" />
          <div class="font-mono">Admin Pannel</div>
        </div>
        <div class="w-full">
          <label
            for="email"
            class="block text-sm font-medium leading-6 text-gray-900"
            >Email address</label
          >
          <input
            id="email"
            name="email"
            type="email"
            autocomplete="email"
            placeholder="email address"
            required
            class="block w-full rounded-md border-0 py-1.5 px-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:outline-none focus:ring-primaryLight sm:text-sm sm:leading-6"
          />
        </div>
        <div class="w-full">
          <label
            for="password"
            class="block text-sm font-medium leading-6 text-gray-900"
            >Password</label
          >
          <input
            id="password"
            name="password"
            type="password"
            placeholder="password"
            required
            class="block w-full rounded-md border-0 py-1.5 px-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:outline-none focus:ring-primaryLight sm:text-sm sm:leading-6"
          />
        </div>
        <div class="w-full">
            <button
              type="submit"
              class="flex w-full justify-center rounded-md bg-primary px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-primaryLight focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
            >
              Sign in
            </button>
          </div>
      </form>
    </div>
      
      <script>
      $(document).ready(function () {
        $("#signin").submit(function (e) {
          e.preventDefault();
          var formData = new FormData(this);
          $.ajax({
            type: "POST",
            url: "<%=path%>adminSignIn",
            data: formData,
            processData: false,
            contentType: false,
            success: function (response) {
              if(response == "no") {
                Swal.fire({
                  title: "Oops!",
                  text: "It seems like the username you entered is incorrect. Please double-check and try again.",
                  icon: "error",
                  confirmButtonColor: "#1b2330",
                });
              }
              else{
                  Swal.fire({
                  title: "Welcome back!",
                  text: "You're now signed in to your account.",
                  icon: "success",
                  confirmButtonColor: "#1b2330",
                }).then(()=>{
                    location.reload();
                });
              }
            },
            error: function (xhr, status, error) {
              console.error(xhr.responseText);
            },
          });
        });
      });
    </script>
      
  </body>
</html>
