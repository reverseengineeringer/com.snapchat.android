.class public final Laev;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    invoke-direct {p0, v0}, Laev;-><init>(Lnb;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lnb;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Laev;->a:Lnb;

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 184
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->values()[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ladb;IIII)V
    .locals 1

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    int-to-float v0, p4

    iput v0, p0, Ladb;->i:F

    .line 173
    int-to-float v0, p3

    iput v0, p0, Ladb;->h:F

    .line 174
    int-to-float v0, p1

    iput v0, p0, Ladb;->f:F

    .line 175
    int-to-float v0, p2

    iput v0, p0, Ladb;->g:F

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 199
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    .line 200
    if-nez v2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v7

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sent-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    if-eqz p0, :cond_1

    .line 208
    new-instance v0, Lbcs;

    invoke-direct {v0, v6}, Lbcs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_1
    new-instance v0, Lbbg;

    const/4 v1, 0x0

    const v3, 0x7f0c010c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/snapchat/android/notification/AndroidNotificationManager;->a:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    .line 214
    new-instance v1, Lbcy;

    invoke-direct {v1, v6, v0}, Lbcy;-><init>(Ljava/lang/String;Lbbg;)V

    invoke-virtual {v7, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
