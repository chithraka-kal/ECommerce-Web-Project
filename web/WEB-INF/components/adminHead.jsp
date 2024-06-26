
<% 
String path = request.getParameter("path");
int no = Integer.parseInt(request.getParameter("no"));
%>
  
    
    <div class="flex flex-col lg:flex-row min-h-screen">
      <div class="bg-primary w-full lg:w-[19%] py-5 flex lg:flex-col lg:h-screen max-lg:items-center sticky top-0 z-50">
        <div class="w-full flex flex-col items-center">
          <a class="w-[70%]" href="../"><img class="w-[200px] lg:w-full" src="<%=path%>../img/2.png" alt="logo" /></a>
          <p class="max-lg:hidden text-white font-mono max-lg:text-sm">Admin Dashboard</p>
        </div>
        <div class="px-5 text-white lg:mt-10 flex lg:flex-col max-lg:items-start  gap-1">
          <a class="flex items-center py-2 px-3 hover:bg-primaryLight rounded-lg duration-300 <%= no==1 ? "bg-primaryLight" : "" %>" href="<%=path%>index.jsp"
            ><i class="fa-solid fa-compass text-lg lg:text-2xl lg:w-10"></i>
            <div class="max-lg:hidden">Dashboard</div></a
          >
          <a class="flex items-center py-2 px-3 hover:bg-primaryLight rounded-lg duration-300 <%= no==2 ? "bg-primaryLight" : "" %>" href="<%=path%>orders/"
            ><i class="fa-solid fa-bag-shopping text-lg lg:text-2xl lg:w-10"></i>
            <div class="max-lg:hidden">Orders</div></a
          >
          <a class="flex items-center py-2 px-3 hover:bg-primaryLight rounded-lg duration-300 <%= no==3 ? "bg-primaryLight" : "" %>" href="<%=path%>products/"
            ><i class="fa-solid fa-tags text-lg lg:text-2xl lg:w-10"></i>
            <div class="max-lg:hidden">Products</div></a
          >
          <a class="flex items-center py-2 px-3 hover:bg-primaryLight rounded-lg duration-300 <%= no==4 ? "bg-primaryLight" : "" %>" href="<%=path%>customers/"
            ><i class="fa-solid fa-person text-lg lg:text-2xl lg:w-10"></i>
            <div class="max-lg:hidden">Customers</div></a
          >
          <a class="flex items-center py-2 px-3 hover:bg-primaryLight rounded-lg duration-300 <%= no==5 ? "bg-primaryLight" : "" %>" href="#"
            ><i class="fa-solid fa-user-tie text-lg lg:text-2xl lg:w-10"></i>
            <div class="max-lg:hidden">Administration</div></a
          >
        </div>
        <div class="px-5 text-white lg:mt-auto flex flex-col max-lg:hidden">
          <a class="flex items-center py-2 px-3 hover:bg-primaryLight rounded-lg duration-300" href="https://github.com/nipun-dezoysa"
            ><i class="fa-solid fa-circle-info text-lg lg:text-2xl lg:w-10"></i>
              <div>Admin Pannel v 1.0</div></a
          >
        </div>
      </div>
      <div class="bg-gray-200 w-full lg:w-[81%] min-h-screen flex flex-col">
        <div class="bg-white py-5 px-10 flex justify-between">
          <div class="flex items-center gap-2">
            <i class="fa-solid fa-magnifying-glass gap-3"></i>
            <input
              class="focus:outline-none w-full placeholder:text-gray-400 border-0 focus:ring-0"
              type="text"
              name="search"
              id="search"
              placeholder="Search..."
            />
          </div>
          <div class="flex items-center gap-3">
            <div class="flex flex-col justify-center">
              <a class="font-semibold text-gray-500" href="#">Admin</a>
              <a class="text-red-700 font-mono" href="<%=path%>../adminSignOut">Log Out</a>
            </div>
            <div
              class="bg-gray-200 rounded-full w-12 h-12 flex items-center justify-center text-gray-400"
            >
              <i class="fa-regular fa-user"></i>
            </div>
          </div>
        </div>
        <div class="p-5 flex flex-col gap-5">
          <!-- body strat here -->