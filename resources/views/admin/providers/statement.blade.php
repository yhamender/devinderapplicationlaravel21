@extends('admin.layout.base')

@section('title', $page)

@section('content')

    <div class="content-area py-1">
        <div class="container-fluid">
            <div class="box box-block bg-white">
            	<h3>{{$page}}</h3>

            	<div style="text-align: center;padding: 20px;color: blue;font-size: 24px;">
            		<p><strong>
            			<span>Over All Earning : {{currency($revenue[0]->overall)}}</span>
            			<br>
            			<span>Over All Commission : {{currency($revenue[0]->commission)}}</span>
            		</strong></p>
            	</div>

            	<div class="row">

	            	<div class="col-lg-4 col-md-6 col-xs-12">
						<div class="box box-block bg-white tile tile-1 mb-2">
							<div class="t-icon right"><span class="bg-danger"></span><i class="ti-rocket"></i></div>
							<div class="t-content">
								<h6 class="text-uppercase mb-1">Total No. of Jobs</h6>
								<h1 class="mb-1">{{$rides->count()}}</h1>
								<span class="text-muted font-90">% down from cancelled Request</span>
							</div>
						</div>
					</div>


					<div class="col-lg-4 col-md-6 col-xs-12">
						<div class="box box-block bg-white tile tile-1 mb-2">
							<div class="t-icon right"><span class="bg-success"></span><i class="ti-bar-chart"></i></div>
							<div class="t-content">
								<h6 class="text-uppercase mb-1">Revenue</h6>
								<h1 class="mb-1">{{currency($revenue[0]->overall)}}</h1>
								<i class="fa fa-caret-up text-success mr-0-5"></i><span>from {{$rides->count()}} Jobs</span>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 col-xs-12">
						<div class="box box-block bg-white tile tile-1 mb-2">
							<div class="t-icon right"><span class="bg-warning"></span><i class="ti-archive"></i></div>
							<div class="t-content">
								<h6 class="text-uppercase mb-1">Cancelled Jobs</h6>
								<h1 class="mb-1">{{$cancel_rides}}</h1>
								<i class="fa fa-caret-down text-danger mr-0-5"></i><span>for @if($cancel_rides == 0) 0.00 @else {{round($cancel_rides/$rides->count(),2)}}% @endif Jobs</span>
							</div>
						</div>
					</div>

						<div class="row row-md mb-2" style="padding: 15px;">
							<div class="col-md-12">
									<div class="box bg-white" style="overflow: scroll;">
										<div class="box-block clearfix">
											<h5 class="float-xs-left">Earnings</h5>
											<div class="float-xs-right">
											</div>
										</div>

										@if(count($rides) != 0)
								            <table class="table table-striped table-bordered dataTable" id="table-2">
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
														@foreach($rides as $index => $ride)
															<tr>
									<td>{{$ride->booking_id}} </td>
									<td>{{$ride->created_at}} </td>
									<td>{{$ride->provider_id}}</td>
									<td>Required Information</td>
									<td>{{$ride->started_at}}</td>
									<td>{{$ride->s_address}}</td>
									<td>Required Information</td>
									<td>Required Information</td>
									<td>Required Information</td>
									<td>{{$ride->s_latitude}}</td>
									<td>{{$ride->s_longitude}}</td>
									<td>{{$ride->d_latitude}}</td>
									<td>{{$ride->d_longitude}}</td>
									<td>{{$ride->finished_at}}</td>
									<td>Required Information</td>
									<td>Required Information</td>
									<td>Required Information</td>
									<td>Required Information</td>
									<td>{{$ride->started_at}}</td>
									<td>Required Information</td>
									<td>Required Information</td>
									<td>{{$ride->distance}}</td>
								</tr>
														@endforeach
															
								                <tfoot>
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
