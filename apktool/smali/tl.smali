.class public final Ltl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltl$1;
    }
.end annotation


# static fields
.field public static final BYTE_STREAM_MEDIA_TYPE:Lblw;

.field public static final JSON_MEDIA_TYPE:Lblw;

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"

.field public static final STRING_MEDIA_TYPE:Lblw;

.field private static final TAG:Ljava/lang/String; = "EntityFactory"

.field public static final URL_ENCODED_FORM_MEDIA_TYPE:Lblw;

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final mFormEncodedJsonFieldMapper:Lto;

.field private final mGson:Lato;

.field private final mMultipartEncodedFieldMapper:Ltz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lblw;->a(Ljava/lang/String;)Lblw;

    move-result-object v0

    sput-object v0, Ltl;->BYTE_STREAM_MEDIA_TYPE:Lblw;

    .line 32
    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lblw;->a(Ljava/lang/String;)Lblw;

    move-result-object v0

    sput-object v0, Ltl;->JSON_MEDIA_TYPE:Lblw;

    .line 33
    const-string v0, "text/plain; charset=UTF-8"

    invoke-static {v0}, Lblw;->a(Ljava/lang/String;)Lblw;

    move-result-object v0

    sput-object v0, Ltl;->STRING_MEDIA_TYPE:Lblw;

    .line 34
    const-string v0, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-static {v0}, Lblw;->a(Ljava/lang/String;)Lblw;

    move-result-object v0

    sput-object v0, Ltl;->URL_ENCODED_FORM_MEDIA_TYPE:Lblw;

    return-void
.end method

.method protected constructor <init>(Lto;Ltz;Lato;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ltl;->mFormEncodedJsonFieldMapper:Lto;

    .line 42
    iput-object p2, p0, Ltl;->mMultipartEncodedFieldMapper:Ltz;

    .line 43
    iput-object p3, p0, Ltl;->mGson:Lato;

    .line 44
    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/util/Map;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    const-string v0, "EntityFactory"

    const-string v1, "Error occurred while encoding map into UTF-8 string."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lbmb;
    .locals 5

    .prologue
    .line 47
    if-nez p2, :cond_1

    .line 48
    if-eqz p1, :cond_0

    invoke-static {}, Lbfr;->a()Lbfr;

    invoke-static {}, Lbfr;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ltl;->JSON_MEDIA_TYPE:Lblw;

    const-string v1, "{}"

    invoke-static {v0, v1}, Lbmb;->a(Lblw;Ljava/lang/String;)Lbmb;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 48
    :cond_0
    sget-object v0, Ltl;->URL_ENCODED_FORM_MEDIA_TYPE:Lblw;

    const-string v1, ""

    invoke-static {v0, v1}, Lbmb;->a(Lblw;Ljava/lang/String;)Lbmb;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p2}, Lcom/snapchat/android/api2/framework/RequestBodyType;->typeOf(Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/RequestBodyType;

    move-result-object v1

    .line 54
    instance-of v0, p2, Luf;

    if-eqz v0, :cond_4

    .line 55
    check-cast p2, Luf;

    .line 56
    iget-object v0, p2, Luf;->mBodyObject:Ljava/lang/Object;

    .line 60
    :goto_1
    sget-object v2, Ltl$1;->$SwitchMap$com$snapchat$android$api2$framework$RequestBodyType:[I

    invoke-virtual {v1}, Lcom/snapchat/android/api2/framework/RequestBodyType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No encoding annotation is set on the payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_0
    iget-object v1, p0, Ltl;->mGson:Lato;

    invoke-virtual {v1, v0}, Lato;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltl;->JSON_MEDIA_TYPE:Lblw;

    invoke-static {v1, v0}, Lbmb;->a(Lblw;Ljava/lang/String;)Lbmb;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v1, p0, Ltl;->mFormEncodedJsonFieldMapper:Lto;

    invoke-virtual {v1, v0}, Lto;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ltl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltl;->URL_ENCODED_FORM_MEDIA_TYPE:Lblw;

    invoke-static {v1, v0}, Lbmb;->a(Lblw;Ljava/lang/String;)Lbmb;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v1, p0, Ltl;->mMultipartEncodedFieldMapper:Ltz;

    invoke-virtual {v1, v0}, Ltz;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lblx;

    invoke-direct {v1}, Lblx;-><init>()V

    sget-object v2, Lblx;->e:Lblw;

    invoke-virtual {v1, v2}, Lblx;->a(Lblw;)Lblx;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltr;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ltr;->a(Ljava/lang/String;)Lblu;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr;

    invoke-interface {v0}, Ltr;->a()Lbmb;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lblx;->a(Lblu;Lbmb;)Lblx;

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lblx;->a()Lbmb;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :pswitch_3
    sget-object v1, Ltl;->BYTE_STREAM_MEDIA_TYPE:Lblw;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v1, v0}, Lbmb;->a(Lblw;[B)Lbmb;

    move-result-object v0

    goto/16 :goto_0

    .line 74
    :pswitch_4
    sget-object v2, Ltl;->BYTE_STREAM_MEDIA_TYPE:Lblw;

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Lbmb$2;

    invoke-direct {v1, v2, v0}, Lbmb$2;-><init>(Lblw;Ljava/io/File;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    goto/16 :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
