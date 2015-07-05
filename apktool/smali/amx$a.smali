.class public final Lamx$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field a:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lat"
    .end annotation
.end field

.field b:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "long"
    .end annotation
.end field

.field c:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accuracyMeters"
    .end annotation
.end field

.field d:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalPollingDurationMillis"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field final synthetic f:Lamx;


# direct methods
.method public constructor <init>(Lamx;DDLjava/lang/Float;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    iput-object p1, p0, Lamx$a;->f:Lamx;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 79
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lamx$a;->a:Ljava/lang/Double;

    .line 80
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lamx$a;->b:Ljava/lang/Double;

    .line 81
    iput-object p6, p0, Lamx$a;->c:Ljava/lang/Float;

    .line 82
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lamx$a;->d:Ljava/lang/Long;

    .line 83
    iput-object p9, p0, Lamx$a;->e:Ljava/lang/String;

    .line 84
    return-void
.end method
