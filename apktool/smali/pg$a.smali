.class public final Lpg$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field final synthetic this$0:Lpg;


# direct methods
.method public constructor <init>(Lpg;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lpg$a;->this$0:Lpg;

    invoke-direct {p0}, Lqc;-><init>()V

    return-void
.end method
