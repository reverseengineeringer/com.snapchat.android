.class public final Lcom/snapchat/android/api2/cash/square/data/CashCustomer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;
    }
.end annotation


# instance fields
.field private final mEmail:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private final mId:Ljava/lang/String;
    .annotation build Lchc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final mPhoneNumber:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_number"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer;->mId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer;->mEmail:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer;->mPhoneNumber:Ljava/lang/String;

    .line 30
    return-void
.end method
