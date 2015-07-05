.class public final Loz$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field mABTestForFeature:Loz$a;
    .annotation build Lcgc;
    .end annotation
.end field

.field mFeatureName:Ljava/lang/String;

.field mOnByDefault:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Loz$a;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loz$b;-><init>(Ljava/lang/String;Loz$a;B)V

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Loz$a;B)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Loz$b;->mFeatureName:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Loz$b;->mOnByDefault:Z

    .line 87
    iput-object p2, p0, Loz$b;->mABTestForFeature:Loz$a;

    .line 88
    return-void
.end method
