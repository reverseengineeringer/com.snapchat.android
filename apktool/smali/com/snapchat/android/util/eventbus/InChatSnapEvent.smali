.class public Lcom/snapchat/android/util/eventbus/InChatSnapEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/snapchat/android/util/eventbus/InChatSnapEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCaption:Ljava/lang/String;

.field public mOriginatingFragment:I

.field public mRecipients:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent$1;

    invoke-direct {v0}, Lcom/snapchat/android/util/eventbus/InChatSnapEvent$1;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mRecipients:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mCaption:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mOriginatingFragment:I

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mRecipients:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mCaption:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mOriginatingFragment:I

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mRecipients:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mOriginatingFragment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
