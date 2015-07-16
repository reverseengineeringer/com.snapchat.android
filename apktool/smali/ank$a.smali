.class public final Lank$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snaptag"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lqc;-><init>()V

    .line 86
    iput-object p1, p0, Lank$a;->a:Ljava/lang/String;

    .line 87
    return-void
.end method
