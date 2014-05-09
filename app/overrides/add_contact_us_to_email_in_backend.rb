Deface::Override.new(
  :virtual_path => "spree/admin/mail_methods/_form",
  :name => "add_contact_us_to_email_in_backend",
  :insert_bottom => "[data-hook='admin_mail_method_form_fields'] div[data-hook='general'] fieldset",
  :text => "
    <hr/>
    <div class='field'>
      <%= label_tag :contact_us_to_email, Spree.t(:contact_us_to_email) %><br />
      <%= text_field_tag :contact_us_to_email, Spree::Config[:contact_us_to_email], :maxlength => 256, :class => 'fullwidth' %>
      <br />
      <span class='info'>
        <%= Spree.t(:contact_us_to_email_info) %>
      </span>
    </div>
  ")
