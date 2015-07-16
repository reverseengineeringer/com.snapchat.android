.class public final Lpm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lpm;

.field private static final TAG:Ljava/lang/String; = "ScreenParameterProvider"


# instance fields
.field public mMaxVideoHeight:I

.field public mMaxVideoWidth:I

.field public mResolution:Lavc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lpm;

    invoke-direct {v0}, Lpm;-><init>()V

    sput-object v0, Lpm;->INSTANCE:Lpm;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lavc;

    invoke-direct {v0, v1, v1}, Lavc;-><init>(II)V

    iput-object v0, p0, Lpm;->mResolution:Lavc;

    .line 33
    return-void
.end method

.method public static a()Lpm;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lpm;->INSTANCE:Lpm;

    return-object v0
.end method
