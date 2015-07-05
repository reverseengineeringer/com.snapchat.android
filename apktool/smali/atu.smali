.class final Latu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field end:I

.field start:I

.field type:Lcom/snapchat/android/util/chat/UrlType;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    sget-object v0, Lcom/snapchat/android/util/chat/UrlType;->LINK:Lcom/snapchat/android/util/chat/UrlType;

    iput-object v0, p0, Latu;->type:Lcom/snapchat/android/util/chat/UrlType;

    return-void
.end method
