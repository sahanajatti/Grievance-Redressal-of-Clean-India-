using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class ViewGallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Call a method to bind gallery images
            BindGalleryImages();
        }
    }

    // Method to bind gallery images
    private void BindGalleryImages()
    {
        // Simulated data source, you should replace this with your actual data retrieval logic
        DataTable dtGallery = GetGalleryImagesFromDatabase();

        // Bind the repeater with the data source
        //rptGallery.DataSource = dtGallery;
        //rptGallery.DataBind();
    }

    // Simulated method to retrieve gallery images from a database
    private DataTable GetGalleryImagesFromDatabase()
    {
        // This is a simulated method. You should replace this with your actual database retrieval logic.
        // For the sake of example, I'm creating a simple DataTable with image URLs.
        DataTable dt = new DataTable();
        dt.Columns.Add("ImageUrl", typeof(string));

        // Adding sample image URLs to the DataTable
        dt.Rows.Add("C:\\Users\\sahan\\OneDrive\\Desktop\\Societal project\\CleanINDIA12\\CleanINDIA1\\img\\download.jpg");


        dt.Rows.Add("images/image2.jpg");
        dt.Rows.Add("images/image3.jpg");
        dt.Rows.Add("images/image4.jpg");

        return dt;
    }
}
