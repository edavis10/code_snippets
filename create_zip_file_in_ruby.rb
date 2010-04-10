ZIP_FILE = "#{PROJECT}.zip"


desc "Zip of the folder for release"
task :zip => [:clean] do
  require 'zip/zip'
  require 'zip/zipfilesystem'

  # check to see if the file exists already, and if it does, delete it.
  if File.file?(ZIP_FILE)
    File.delete(ZIP_FILE)
  end

  # open or create the zip file
  Zip::ZipFile.open(ZIP_FILE, Zip::ZipFile::CREATE) do |zipfile|
    zipfile.mkdir(PROJECT)

    # Should skip svn files
    files = Dir['**/**']

    files.each do |file|
      print "Adding #{file} ...."
      zipfile.add(PROJECT + '/' + file, file)
      puts ". done"
    end
  end

  # set read permissions on the file
  File.chmod(0644, ZIP_FILE)
end
