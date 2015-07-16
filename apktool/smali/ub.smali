.class public final Lub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lub$1;
    }
.end annotation


# static fields
.field public static final BYTE_STREAM_MEDIA_TYPE:Lbmx;

.field public static final JSON_MEDIA_TYPE:Lbmx;

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"

.field public static final STRING_MEDIA_TYPE:Lbmx;

.field private static final TAG:Ljava/lang/String; = "EntityFactory"

.field public static final URL_ENCODED_FORM_MEDIA_TYPE:Lbmx;

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final mFormEncodedJsonFieldMapper:Lue;

.field private final mGson:Laum;

.field private final mMultipartEncodedFieldMapper:Lup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object v0

    sput-object v0, Lub;->BYTE_STREAM_MEDIA_TYPE:Lbmx;

    .line 32
    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object v0

    sput-object v0, Lub;->JSON_MEDIA_TYPE:Lbmx;

    .line 33
    const-string v0, "text/plain; charset=UTF-8"

    invoke-static {v0}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object v0

    sput-object v0, Lub;->STRING_MEDIA_TYPE:Lbmx;

    .line 34
    const-string v0, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-static {v0}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object v0

    sput-object v0, Lub;->URL_ENCODED_FORM_MEDIA_TYPE:Lbmx;

    return-void
.end method

.method protected constructor <init>(Lue;Lup;Laum;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lub;->mFormEncodedJsonFieldMapper:Lue;

    .line 42
    iput-object p2, p0, Lub;->mMultipartEncodedFieldMapper:Lup;

    .line 43
    iput-object p3, p0, Lub;->mGson:Laum;

    .line 44
    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/util/Map;
        .annotation build Lchc;
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

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lbnc;
    .locals 5

    .prologue
    .line 47
    if-nez p2, :cond_1

    .line 48
    if-eqz p1, :cond_0

    invoke-static {}, Lbgr;->a()Lbgr;

    invoke-static {}, Lbgr;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lub;->JSON_MEDIA_TYPE:Lbmx;

    const-string v1, "{}"

    invoke-static {v0, v1}, Lbnc;->a(Lbmx;Ljava/lang/String;)Lbnc;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 48
    :cond_0
    sget-object v0, Lub;->URL_ENCODED_FORM_MEDIA_TYPE:Lbmx;

    const-string v1, ""

    invoke-static {v0, v1}, Lbnc;->a(Lbmx;Ljava/lang/String;)Lbnc;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p2}, Lcom/snapchat/android/api2/framework/RequestBodyType;->typeOf(Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/RequestBodyType;

    move-result-object v1

    .line 54
    instance-of v0, p2, Luw;

    if-eqz v0, :cond_4

    .line 55
    check-cast p2, Luw;

    .line 56
    iget-object v0, p2, Luw;->mBodyObject:Ljava/lang/Object;

    .line 60
    :goto_1
    sget-object v2, Lub$1;->$SwitchMap$com$snapchat$android$api2$framework$RequestBodyType:[I

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
    iget-object v1, p0, Lub;->mGson:Laum;

    invoke-virtual {v1, v0}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lub;->JSON_MEDIA_TYPE:Lbmx;

    invoke-static {v1, v0}, Lbnc;->a(Lbmx;Ljava/lang/String;)Lbnc;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lub;->mFormEncodedJsonFieldMapper:Lue;

    invoke-virtual {v1, v0}, Lue;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lub;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lub;->URL_ENCODED_FORM_MEDIA_TYPE:Lbmx;

    invoke-static {v1, v0}, Lbnc;->a(Lbmx;Ljava/lang/String;)Lbnc;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v1, p0, Lub;->mMultipartEncodedFieldMapper:Lup;

    invoke-virtual {v1, v0}, Lup;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lbmy;

    invoke-direct {v1}, Lbmy;-><init>()V

    sget-object v2, Lbmy;->e:Lbmx;

    invoke-virtual {v1, v2}, Lbmy;->a(Lbmx;)Lbmy;

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

    check-cast v1, Luh;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Luh;->a(Ljava/lang/String;)Lbmv;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luh;

    invoke-interface {v0}, Luh;->a()Lbnc;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lbmy;->a(Lbmv;Lbnc;)Lbmy;

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lbmy;->a()Lbnc;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :pswitch_3
    sget-object v1, Lub;->BYTE_STREAM_MEDIA_TYPE:Lbmx;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v1, v0}, Lbnc;->a(Lbmx;[B)Lbnc;

    move-result-object v0

    goto/16 :goto_0

    .line 74
    :pswitch_4
    sget-object v2, Lub;->BYTE_STREAM_MEDIA_TYPE:Lbmx;

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Lbnc$2;

    invoke-direct {v1, v2, v0}, Lbnc$2;-><init>(Lbmx;Ljava/io/File;)V

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
