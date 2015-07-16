.class public final Lqe$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# static fields
.field static final APPLICATION_ID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "application_id"
    .end annotation
.end field

.field static final DEVICE_TYPE:Ljava/lang/String; = "android"
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# instance fields
.field final mGcmRegistrationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqe$a;->APPLICATION_ID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lqc;-><init>()V

    .line 40
    iput-object p1, p0, Lqe$a;->mGcmRegistrationId:Ljava/lang/String;

    .line 41
    return-void
.end method
