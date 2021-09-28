class ObjToJson

	@JSON: '{"metadata":{"formatVersion":3.1,"generatedBy":"","materials":0,"morphTargets":0,"colors":0,"bones":0,"uvs":[],'
	@VERTICES: ''
	@VERTICES_COUNT: 0
	@NORMALES: ''
	@NORMALES_COUNT: 0
	@UVS: ''
	@UVS_COUNT: 0
	@FACES: ''
	@FACES_COUNT: 0
  
	@clean: ->
		@JSON='{"metadata":{"formatVersion":3.1,"generatedBy":"","materials":0,"morphTargets":0,"colors":0,"bones":0,"uvs":[],'
		@VERTICES=''
		@VERTICES_COUNT=0
		@NORMALES=''
		@NORMALES_COUNT=0
		@UVS=''
		@UVS_COUNT=0
		@FACES=''
		@FACES_COUNT=0

	@parse: (object) ->
		@clean()
		lines = object.split('\n')
		for line in lines
			if line[0] == '#'
				continue
			values = line.split(' ')
			switch 
				when values[0] == "v"
					@VERTICES += ',' + values[1] + ',' + values[2] + ',' + values[3]
					@VERTICES_COUNT += 3
				when values[0] == "vt"
					@UVS += ',' + values[1] + ',' + values[2]
					@UVS_COUNT += 2
				when values[0] == "vn"
					@NORMALES += ',' + values[1] + ',' + values[2] + ',' + values[3]
					@NORMALES_COUNT += 3
				when values[0] == "f" 
					for value in values
						face = value.split('/')
						if face.length < 3
							continue
						@FACES += ',' + face[0] + ',' + face[1] + ',' + face[2]
						@FACES_COUNT += 3
		@JSON+='"vertices":' + VERTICES_COUNT
		@JSON+='"faces":' + FACES_COUNT
		@JSON+='"normals":' + NORMALES_COUNT
		@JSON+='},"morphTargets":[],"morphColors":[],"colors":[],"scale":1.000000,"materials":[],'
		@JSON+='"vertices":[' + @VERTICES[1..]+'],'
		@JSON+='"normals":[' + @NORMALES[1..]+'],'
		@JSON+='"uvs":[[' + @UVS[1..]+']],'
		@JSON+='"faces":[' + @FACES[1..]+']}'
		return @JSON
