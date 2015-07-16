.class public final Lbww$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Lbwt;

.field final b:Lnet/hockeyapp/android/views/AttachmentView;

.field c:Z

.field d:I


# direct methods
.method private constructor <init>(Lbwt;Lnet/hockeyapp/android/views/AttachmentView;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lbww$b;->a:Lbwt;

    .line 125
    iput-object p2, p0, Lbww$b;->b:Lnet/hockeyapp/android/views/AttachmentView;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbww$b;->c:Z

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lbww$b;->d:I

    .line 128
    return-void
.end method

.method public synthetic constructor <init>(Lbwt;Lnet/hockeyapp/android/views/AttachmentView;B)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lbww$b;-><init>(Lbwt;Lnet/hockeyapp/android/views/AttachmentView;)V

    return-void
.end method
