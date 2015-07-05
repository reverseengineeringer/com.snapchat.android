.class public Lcom/snapchat/android/model/chat/ChatMedia$a;
.super Lakb$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/ChatMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public height:I

.field iv:Ljava/lang/String;

.field key:Ljava/lang/String;

.field public mediaId:Ljava/lang/String;

.field mediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lakb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatMedia$a;
    .locals 1

    .prologue
    .line 236
    invoke-static {p1}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia$a;->mediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    .line 237
    return-object p0
.end method

.method public a()Lcom/snapchat/android/model/chat/ChatMedia;
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lcom/snapchat/android/model/chat/ChatMedia$a;)V

    return-object v0
.end method
