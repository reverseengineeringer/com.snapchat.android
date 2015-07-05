.class public final Lake;
.super Lakf;
.source "SourceFile"


# instance fields
.field private mDateText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lakf;-><init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 18
    if-nez p1, :cond_0

    .line 19
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lake;->mDateText:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lake;->mDateText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lake;->mDateText:Ljava/lang/String;

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v0

    invoke-static {v0, v1}, Lata;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lake;->mDateText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lake;->mDateText:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lake;->mDateText:Ljava/lang/String;

    return-object v0
.end method
