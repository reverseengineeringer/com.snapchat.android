.class public final Lcom/snapchat/android/util/eventbus/DrawingEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;
    }
.end annotation


# instance fields
.field public final mDrawingEventType:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/DrawingEvent;->mDrawingEventType:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    .line 18
    return-void
.end method
