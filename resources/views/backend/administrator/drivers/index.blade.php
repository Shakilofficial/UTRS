@extends('layouts.master')
@section('title', 'All Drivers')

@section('content')
    <!-- ========================== Page Content ==================================== -->
    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0 font-size-18">All Drivers</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="{{ route('administrator.dashboard') }}">Dashboard</a></li>
                                <li class="breadcrumb-item active">All Drivers</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            {{-- @if(Session::has('error'))
                                <div class="alert alert-dismissible fade show color-box bg-danger bg-gradient p-4" role="alert">
                                    <span class="mb-4 my-2 text-white">{{ Session::get('error') }}</span>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            @endif --}}

                            <table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                <thead>
                                    <tr>
                                        <th style="width: 20px;">
                                            SL
                                        </th>
                                        <th class="align-middle">Name</th>
                                        <th class="align-middle">Email</th>
                                        <th class="align-middle">Phone No.</th>
                                        <th class="align-middle">Photo</th>
                                        <th class="align-middle">Date & Time</th>
                                        <th class="align-middle">Action</th>
                                    </tr>
                                </thead>


                                <tbody>
                                @foreach($drivers as $key => $driver)
                                    <tr>
                                        <td>
                                            {{ $key + 1 }}
                                        </td>
                                        
                                        <td id="tooltip-container">
                                            <span data-bs-container="#tooltip-container" data-bs-toggle="tooltip" data-bs-placement="bottom" title="{{ $driver->name }}">
                                                {{ $driver->name }}
                                            </span> 
                                        </td>

                                        <td>
                                            <span>
                                                @if($driver->email)
                                                    {{ $driver->email }}
                                                @else
                                                    N/A
                                                @endif
                                            </span> 
                                        </td>

                                        <td id="tooltip-container">
                                            <span data-bs-container="#tooltip-container" data-bs-toggle="tooltip" data-bs-placement="bottom" title="{{ $driver->phone }}">
                                                {{ $driver->phone }}
                                            </span> 
                                        </td>

                                        <td>
                                            <div class="zoom-gallery d-flex flex-wrap">
                                                @if($driver->photo)
                                                    <a href="{{ asset('assets/uploads/drivers/'.$driver->photo) }}" title="{{ $driver->photo }}">
                                                        <img src="{{ asset('assets/uploads/drivers/'.$driver->photo) }}" alt="" style="height: 40px !important; width: 90px !important;" class="img-thumbnail rounded-circle">
                                                    </a>
                                                @else
                                                    <a href="{{ config('core.image.default.avatar') }}" title="Default Driver Image">
                                                        <img src="{{ config('core.image.default.avatar') }}" alt="" style="height: 40px !important; width: 90px !important;" class="img-thumbnail rounded-circle">
                                                    </a>
                                                @endif
                                            </div>
                                        </td>

                                        <td>
                                            <?php
                                                $date_time = strtotime($driver->created_at);
                                                $not_date = date('d M, Y', $date_time);

                                                $time = date('h:i A', $date_time)
                                            ?>
                                            {{ $not_date }} - {{ $time }}
                                        </td>
                                    
                                        
                                        <td>
                                            <div class="inline" style="display: flex; gap: 5px;">
                                                <a class="btn btn-outline-info btn-sm edit" href="{{ route('driver.edit', $driver->id) }}" title="Edit">
                                                    <i class="fas fa-pencil-alt"></i>
                                                </a>
                                                
                                                <form action="{{ route('driver.destroy', $driver->id) }}">
                                                    @csrf
                                                    @method('delete')
                                                    <button class="btn btn-outline-danger btn-sm delete" onclick="return confirm('Are you sure to delete?')" style="margin-left: 5px;" title="Delete" type="submit"><i class="fas fa-trash-alt"></i></button> 
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div> <!-- end col -->
            </div>

        </div> <!-- container-fluid -->
    </div>
    <!-- End Page-content -->                
                
@endsection