class PassedOrFailed

	def initialize(data, threshold)
		@threshold = threshold.to_i
		@data = data
	end

	def perform
		output = {passed: {}, failed: {}}

		@data.each do |k, v|
			result = v.to_i >= @threshold ? :passed : :failed
			output[result][k] = v.to_i
		end

		return output
	end
end