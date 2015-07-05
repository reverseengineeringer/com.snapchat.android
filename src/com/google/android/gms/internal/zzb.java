package com.google.android.gms.internal;

public enum zzb
{
  private final String zzfl;
  
  static
  {
    zzbA = new zzb("BLACKLISTED_BEHAVIOR", 17, "blacklisted_behavior");
    zzbB = new zzb("CACHE_BUSTER", 18, "cache_buster");
    zzbC = new zzb("CACHE_BUSTER_VALUE", 19, "cache_buster_value");
    zzbD = new zzb("CAMPAIGN_CONTENT_KEY", 20, "campaign_content_key");
    zzbE = new zzb("CAMPAIGN_CONTENT_OVERRIDE", 21, "campaign_content_override");
    zzbF = new zzb("CAMPAIGN_COOKIE_TIMEOUT", 22, "campaign_cookie_timeout");
    zzbG = new zzb("CAMPAIGN_MEDIUM_KEY", 23, "campaign_medium_key");
    zzbH = new zzb("CAMPAIGN_MEDIUM_OVERRIDE", 24, "campaign_medium_override");
    zzbI = new zzb("CAMPAIGN_NAME_KEY", 25, "campaign_name_key");
    zzbJ = new zzb("CAMPAIGN_NAME_OVERRIDE", 26, "campaign_name_override");
    zzbK = new zzb("CAMPAIGN_NO_KEY", 27, "campaign_no_key");
    zzbL = new zzb("CAMPAIGN_SOURCE_KEY", 28, "campaign_source_key");
    zzbM = new zzb("CAMPAIGN_SOURCE_OVERRIDE", 29, "campaign_source_override");
    zzbN = new zzb("CAMPAIGN_TERM_KEY", 30, "campaign_term_key");
    zzbO = new zzb("CAMPAIGN_TERM_OVERRIDE", 31, "campaign_term_override");
    zzbP = new zzb("CAMPAIGN_TRACK", 32, "campaign_track");
    zzbQ = new zzb("CATEGORY", 33, "category");
    zzbR = new zzb("CHECK_VALIDATION", 34, "check_validation");
    zzbS = new zzb("CLEAR_PERSISTENT_DATA_LAYER_PREFIX", 35, "clear_data_layer_prefix");
    zzbT = new zzb("CLICK_ID", 36, "click_id");
    zzbU = new zzb("CLIENT_INFO", 37, "client_info");
    zzbV = new zzb("COMPANY", 38, "company");
    zzbW = new zzb("COMPONENT", 39, "component");
    zzbX = new zzb("CONTENT_DESCRIPTION", 40, "content_description");
    zzbY = new zzb("CONTENT_GROUP", 41, "content_group");
    zzbZ = new zzb("CONVERSION_ID", 42, "conversion_id");
    zzca = new zzb("COOKIE_DOMAIN", 43, "cookie_domain");
    zzcb = new zzb("COOKIE_EXPIRATION", 44, "cookie_expiration");
    zzcc = new zzb("COOKIE_NAME", 45, "cookie_name");
    zzcd = new zzb("COOKIE_PATH", 46, "cookie_path");
    zzce = new zzb("COOKIE_PATH_COPY", 47, "cookie_path_copy");
    zzcf = new zzb("COUNTRY", 48, "country");
    zzcg = new zzb("CURRENCY_CODE", 49, "currency_code");
    zzch = new zzb("CUSTOM_URL_SOURCE", 50, "custom_url_source");
    zzci = new zzb("CUSTOM_VARS", 51, "custom_vars");
    zzcj = new zzb("CUSTOMER_ID", 52, "customer_id");
    zzck = new zzb("DATA_LAYER_VERSION", 53, "data_layer_version");
    zzcl = new zzb("DATA_PROVIDER_ID", 54, "data_provider_id");
    zzcm = new zzb("DEBUG", 55, "debug");
    zzcn = new zzb("DECORATE_FORM", 56, "decorate_form");
    zzco = new zzb("DECORATE_FORMS_AUTO_LINK", 57, "decorate_forms_auto_link");
    zzcp = new zzb("DECORATE_LINK", 58, "decorate_link");
    zzcq = new zzb("DEFAULT_PAGES", 59, "default_pages");
    zzcr = new zzb("DEFAULT_VALUE", 60, "default_value");
    zzcs = new zzb("DEPENDENCIES", 61, "dependencies");
    zzct = new zzb("DETECT_FLASH", 62, "detect_flash");
    zzcu = new zzb("DETECT_TITLE", 63, "detect_title");
    zzcv = new zzb("DIMENSION", 64, "dimension");
    zzcw = new zzb("DOMAIN_NAME", 65, "domain_name");
    zzcx = new zzb("DOUBLE_CLICK", 66, "double_click");
    zzcy = new zzb("ECOMMERCE_MACRO_DATA", 67, "ecommerce_macro_data");
    zzcz = new zzb("ECOMMERCE_USE_DATA_LAYER", 68, "ecommerce_use_data_layer");
    zzcA = new zzb("ELEMENT", 69, "element");
    zzcB = new zzb("ELEMENTS", 70, "elements");
    zzcC = new zzb("EMAIL", 71, "email");
    zzcD = new zzb("EMPLOYEE_RANGE", 72, "employee_range");
    zzcE = new zzb("ENABLE_ECOMMERCE", 73, "enable_ecommerce");
    zzcF = new zzb("ENABLE_ALL_VIDEOS", 74, "enable_all_videos");
    zzcG = new zzb("ENABLE_PRODUCT_REPORTING", 75, "enable_product_reporting");
    zzcH = new zzb("ESCAPE", 76, "escape");
    zzcI = new zzb("EVENT_ACTION", 77, "event_action");
    zzcJ = new zzb("EVENT_CATEGORY", 78, "event_category");
    zzcK = new zzb("EVENT_LABEL", 79, "event_label");
    zzcL = new zzb("EVENT_VALUE", 80, "event_value");
    zzcM = new zzb("EXCEPTION_DESCRIPTION", 81, "exception_description");
    zzcN = new zzb("EXCEPTION_FATAL", 82, "exception_fatal");
    zzcO = new zzb("EXPERIMENT_KEY", 83, "experiment_key");
    zzcP = new zzb("FAILED_BEHAVIOR", 84, "failed_behavior");
    zzcQ = new zzb("SECTION_INDEX", 85, "section_index");
    zzcR = new zzb("FIELDS_TO_SET", 86, "fields_to_set");
    zzcS = new zzb("FORCE_SSL", 87, "force_ssl");
    zzcT = new zzb("FORM_OBJECT", 88, "form_object");
    zzcU = new zzb("FUNCTION", 89, "function");
    zzcV = new zzb("FUNCTION_CALL_NAME", 90, "function_call_macro_name");
    zzcW = new zzb("GROUP", 91, "group");
    zzcX = new zzb("HIT_CALLBACK", 92, "hit_callback");
    zzcY = new zzb("HTML", 93, "html");
    zzcZ = new zzb("ID", 94, "id");
    zzda = new zzb("IGNORED_ORGANIC", 95, "ignored_organic");
    zzdb = new zzb("IGNORED_REF", 96, "ignored_ref");
    zzdc = new zzb("IGNORE_CASE", 97, "ignore_case");
    zzdd = new zzb("INPUT", 98, "input");
    zzde = new zzb("INPUT_FORMAT", 99, "input_format");
    zzdf = new zzb("INSTANCE_NAME", 100, "instance_name");
    zzdg = new zzb("INSTANCE_LABEL", 101, "instance_label");
    zzdh = new zzb("INTERVAL", 102, "interval");
    zzdi = new zzb("ITEM_SEPARATOR", 103, "item_separator");
    zzdj = new zzb("JAVASCRIPT", 104, "javascript");
    zzdk = new zzb("JSON", 105, "json");
    zzdl = new zzb("KEYWORD", 106, "keyword");
    zzdm = new zzb("KEY_VALUE_SEPARATOR", 107, "key_value_separator");
    zzdn = new zzb("LABEL", 108, "label");
    zzdo = new zzb("LANGUAGE", 109, "language");
    zzdp = new zzb("LIMIT", 110, "limit");
    zzdq = new zzb("LINK", 111, "link");
    zzdr = new zzb("LINK_BY_POST", 112, "link_by_post");
    zzds = new zzb("LINK_ID", 113, "link_id");
    zzdt = new zzb("LIVE_ONLY", 114, "live_only");
    zzdu = new zzb("LOCAL_GIF_PATH", 115, "local_gif_path");
    zzdv = new zzb("LOCALE", 116, "locale");
    zzdw = new zzb("LOCATION", 117, "location");
    zzdx = new zzb("MAP", 118, "map");
    zzdy = new zzb("MAX", 119, "max");
    zzdz = new zzb("MIN", 120, "min");
    zzdA = new zzb("METRIC", 121, "metric");
    zzdB = new zzb("NAME", 122, "name");
    zzdC = new zzb("NAMESPACE_CODE", 123, "namespace_code");
    zzdD = new zzb("NAMESPACE_ID", 124, "namespace_id");
    zzdE = new zzb("NAMESPACE_VALUE", 125, "namespace_value");
    zzdF = new zzb("NONINTERACTION", 126, "noninteraction");
    zzdG = new zzb("NOT_DEFAULT_MACRO", 127, "not_default_macro");
    zzdH = new zzb("NO_PADDING", 128, "no_padding");
    zzdI = new zzb("NUMBER", 129, "number");
    zzdJ = new zzb("OPTOUT", 130, "optout");
    zzdK = new zzb("ORDER", 131, "order");
    zzdL = new zzb("ORDER_ID", 132, "order_id");
    zzdM = new zzb("ORDER_VALUE", 133, "order_value");
    zzdN = new zzb("ORDINAL", 134, "ordinal");
    zzdO = new zzb("ORGANIC", 135, "organic");
    zzdP = new zzb("OUTPUT_FORMAT", 136, "output_format");
    zzdQ = new zzb("PAGE", 137, "page");
    zzdR = new zzb("PAGE_PATH", 138, "page_path");
    zzdS = new zzb("PARTITION", 139, "partition");
    zzdT = new zzb("PERCENTAGE", 140, "percentage");
    zzdU = new zzb("PIXEL", 141, "pixel");
    zzdV = new zzb("PLATFORM", 142, "platform");
    zzdW = new zzb("PRICES", 143, "prices");
    zzdX = new zzb("PRIORITY", 144, "priority");
    zzdY = new zzb("PRODUCT", 145, "product");
    zzdZ = new zzb("PRODUCT_DATA", 146, "product_data");
    zzea = new zzb("PRODUCT_ID", 147, "product_id");
    zzeb = new zzb("PRODUCT_IDS", 148, "product_ids");
    zzec = new zzb("PUSH_AFTER_EVALUATE", 149, "push_after_evaluate");
    zzed = new zzb("QUANTITY", 150, "quantity");
    zzee = new zzb("QUERY_KEY", 151, "query_key");
    zzef = new zzb("QUERY_LISTS", 152, "query_lists");
    zzeg = new zzb("REFERRER", 153, "referrer");
    zzeh = new zzb("REFERRER_OVERRIDE", 154, "referrer_override");
    zzei = new zzb("REVENUE", 155, "revenue");
    zzej = new zzb("SAMPLE_RATE", 156, "sample_rate");
    zzek = new zzb("SELECTOR", 157, "selector");
    zzel = new zzb("SEND_HITS_TO_GOOGLE", 158, "send_hits_to_google");
    zzem = new zzb("SESSION_CONTROL", 159, "session_control");
    zzen = new zzb("SESSION_COOKIE_TIMEOUT", 160, "session_cookie_timeout");
    zzeo = new zzb("SITE_SPEED_SAMPLE_RATE", 161, "site_speed_sample_rate");
    zzep = new zzb("SOCIAL_ACTION", 162, "social_action");
    zzeq = new zzb("SOCIAL_ACTION_TARGET", 163, "social_action_target");
    zzer = new zzb("SOCIAL_NETWORK", 164, "social_network");
    zzes = new zzb("SOCIAL_USE_DATA_LAYER", 165, "social_use_data_layer");
    zzet = new zzb("SERVER_SIDE", 166, "server_side");
    zzeu = new zzb("STANDARD_INDUSTRIAL_CLASSIFICATION", 167, "standard_industrial_classification");
    zzev = new zzb("STRING", 168, "string");
    zzew = new zzb("STRIP_WWW", 169, "strip_www");
    zzex = new zzb("TAG_ID", 170, "tag_id");
    zzey = new zzb("TAG_LIST", 171, "tag_list");
    zzez = new zzb("TAG_REFERENCE", 172, "tag_reference");
  }
  
  private zzb(String paramString)
  {
    zzfl = paramString;
  }
  
  public final String toString()
  {
    return zzfl;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */