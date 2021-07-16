@extends('admin.layout.base')

@section('title', $page)

@section('content')

    <div class="content-area py-1">
        <div class="container-fluid">
            <div class="box box-block bg-white">
            	<h3>{{$page}}</h3>

            	<div class="row">

						<div class="row row-md mb-2" style="padding: 15px;">
							<div class="col-md-12">
									<div class="box bg-white" style="overflow: scroll;">
										<div class="box-block clearfix">
											<h5 class="float-xs-left">Earnings</h5>
											<div class="float-xs-right">
											</div>
										</div>

										@if(count($Providers) != 0)
								            <table class="table table-striped table-bordered dataTable display" id="table-2">
								                <thead style="overflow: scroll;">
								                   <tr>
														<td class="all">Trip Id</td>
														<td class="all">Requested Date Time</td>
														<td class="all">Driver Number</td>
														<td class="all">Vehicle Plate Number</td>
														<td class="all">Commenced Date Time</td>
														<td class="all">Pick up Address Street</td>
														<td class="all">Pick up Address Suburb</td>
														<td class="all">Pick up Address State</td>
														<td class="all">Pick up Address Postcode</td>
														<td class="all">Commenced Latitude</td>
														<td class="all">Commenced Longitude</td>
														<td class="all">Ended Latitude</td>
														<td class="all">Ended Longitude</td>
														<td class="all">Ended Date Time</td>
														<td class="all">Drop off Address Street</td>
														<td class="all">Drop off Address Suburb</td>
														<td class="all">Drop off Address State</td>
														<td class="all">Drop off Address Postcode</td>
														<td class="all">Fare</td>
														<td class="all">Gov Subsidised Trip</td>
														<td class="all">Wheelchair Accessible Vehicle</td>
														<td class="all">Distance</td>
													</tr>
								                </thead>
								                <tbody>
								                     
								                <?php $diff = ['-success','-info','-warning','-danger']; ?>
														@foreach($Providers as $index => $provider)
															<tr>
																<td>{{$provider->booking_id}} </td>
																<td>{{$provider->created_at}} </td>
																<td>{{$provider->provider_id}}</td>
																<td>Required Information</td>
																<td>{{$provider->started_at}}</td>
																<td>{{$provider->s_address}}</td>
																<td>Required Information</td>
																<td>Required Information</td>
																<td>Required Information</td>
																<td>{{$provider->s_latitude}}</td>
																<td>{{$provider->s_longitude}}</td>
																<td>{{$provider->d_latitude}}</td>
																<td>{{$provider->d_longitude}}</td>
																<td>{{$provider->finished_at}}</td>
																<td>Required Information</td>
																<td>Required Information</td>
																<td>Required Information</td>
																<td>Required Information</td>
																<td>{{$provider->started_at}}</td>
																<td>Required Information</td>
																<td>Required Information</td>
																<td>{{$provider->distance}}</td>
															</tr>
														
														@endforeach
															
								                <tfoot>
								                    <tr>
								                    	<td>Trip Id</td>
														<td>Requested Date Time</td>
														<td>Driver Number</td>
														<td>Vehicle Plate Number</td>
														<td>Commenced Date Time</td>
														<td>Pick up Address Street</td>
														<td>Pick up Address Suburb</td>
														<td>Pick up Address State</td>
														<td>Pick up Address Postcode</td>
														<td>Commenced Latitude</td>
														<td>Commenced Longitude</td>
														<td>Ended Latitude</td>
														<td>Ended Longitude</td>
														<td>Ended Date Time</td>
														<td>Drop off Address Street</td>
														<td>Drop off Address Suburb</td>
														<td>Drop off Address State</td>
														<td>Drop off Address Postcode</td>
														<td>Fare</td>
														<td>Gov Subsidised Trip</td>
														<td>Wheelchair Accessible Vehicle</td>
														<td>Distance</td>
													</tr>
								                </tfoot>
								                </tbody>
								            </table>
								            @else
								            <h6 class="no-result">No results found</h6>
								            @endif 

									</div>
								</div>

							</div>

            	</div>

            </div>
        </div>
    </div>
 

@endsection
 

